import { tool, type Plugin } from "@opencode-ai/plugin"

const providers = new Set(["brave", "tavily", "deepseek"])
const directivePattern = /\[search:([a-z0-9_-]+)\]/gi

const deepseekSearch = tool({
  description: "Search the web using the DeepSeek Search API",
  args: {
    query: tool.schema.string().min(1).max(128).describe("Search query"),
    count: tool.schema.number().int().min(1).max(10).optional().describe("Number of results"),
    need_content: tool.schema.boolean().optional().describe("Fetch page content when available"),
  },
  async execute(args) {
    const apiKey = process.env.DEEPSEEK_API_KEY || process.env.DeepSeek_Search_API
    if (!apiKey) {
      throw new Error("DEEPSEEK_API_KEY is not set")
    }

    const timeoutMs = Number(process.env.PAS_TIMEOUT_MS || "30000")
    const count = args.count || Number(process.env.PAS_MAX_RESULTS || "5")
    const controller = new AbortController()
    const timer = setTimeout(() => controller.abort(), timeoutMs)

    try {
      const response = await fetch("https://api.deepseek.com/v1/tools/search", {
        method: "POST",
        headers: {
          Authorization: `Bearer ${apiKey}`,
          "Content-Type": "application/json",
        },
        body: JSON.stringify({
          query: args.query,
          count,
          need_content: args.need_content ?? false,
        }),
        signal: controller.signal,
      })

      if (!response.ok) {
        const detail = await response.text()
        throw new Error(`DeepSeek Search error ${response.status}: ${detail.slice(0, 500)}`)
      }

      const data = await response.json()
      const results = Array.isArray(data.results) ? data.results : []

      if (results.length === 0) {
        return "No results found."
      }

      return results
        .map((item: Record<string, unknown>, index: number) => {
          const title = String(item.title || "Untitled")
          const url = String(item.url || "")
          const summary = String(item.summary || item.snippet || "")
          return `${index + 1}. ${title}\n${url}\n${summary}`.trim()
        })
        .join("\n\n")
    } finally {
      clearTimeout(timer)
    }
  },
})

export const PasRouter: Plugin = async () => {
  return {
    tool: {
      deepseek_search: deepseekSearch,
    },
    "chat.message": async (_input, output) => {
      const textParts = output.parts.filter((part: any) => part.type === "text")
      if (textParts.length === 0) return

      const combined = textParts.map((part: any) => part.text || "").join("\n")
      const matches = [...combined.matchAll(directivePattern)]
      if (matches.length === 0) return

      const provider = matches[matches.length - 1][1].toLowerCase()

      for (const part of textParts) {
        part.text = String(part.text || "").replace(directivePattern, "").trim()
      }

      const first = textParts[0] as any
      if (!providers.has(provider)) {
        first.text = `[search:error] Proveedor desconocido: ${provider}. Usa brave, tavily o deepseek.\n\n${first.text}`.trim()
        return
      }

      first.text = `[search:${provider}] Usa el subagente research-${provider} para esta petición.\n\n${first.text}`.trim()
    },
  }
}
