import { readFileSync } from "node:fs"
import { resolve } from "node:path"
import { fileURLToPath } from "node:url"

const allowed = new Set([
  "BRAVE_API_KEY",
  "TAVILY_API_KEY",
  "TAVILY_API_RESEARCHER",
  "TAVILY_MCP_URL",
  "URL_TAVILY_REMOTE_MCP",
  "DEEPSEEK_API_KEY",
  "DeepSeek_Search_API",
  "PAS_DEFAULT_PROVIDER",
  "PAS_MAX_RESULTS",
  "PAS_TIMEOUT_MS",
])

function parseEnv(filePath: string): Record<string, string> {
  const values: Record<string, string> = {}
  try {
    const text = readFileSync(filePath, "utf8")
    for (const raw of text.split("\n")) {
      const line = raw.trim()
      if (!line || line.startsWith("#") || !line.includes("=")) continue
      const index = line.indexOf("=")
      const key = line.slice(0, index).trim()
      if (!allowed.has(key)) continue
      let value = line.slice(index + 1).trim()
      value = value.replace(/^["']|["']$/g, "")
      values[key] = value
    }
  } catch {
    // .env is optional; missing variables remain empty.
  }
  return values
}

function loadEnv(): Record<string, string> {
  const defaultPath = fileURLToPath(new URL("../../.env", import.meta.url))
  const filePath = process.env.PAS_ENV_FILE
    ? resolve(process.cwd(), process.env.PAS_ENV_FILE)
    : defaultPath
  const fileEnv = parseEnv(filePath)
  const env: Record<string, string> = {}

  for (const key of allowed) {
    const processValue = process.env[key]
    env[key] = processValue && processValue.length > 0 ? processValue : (fileEnv[key] || "")
  }

  if (!env.TAVILY_API_KEY && env.TAVILY_API_RESEARCHER) {
    env.TAVILY_API_KEY = env.TAVILY_API_RESEARCHER
  }
  if (!env.DEEPSEEK_API_KEY && env.DeepSeek_Search_API) {
    env.DEEPSEEK_API_KEY = env.DeepSeek_Search_API
  }

  for (const [key, value] of Object.entries(env)) {
    if (value && !process.env[key]) {
      process.env[key] = value
    }
  }
  if (env.TAVILY_API_KEY) process.env.TAVILY_API_KEY = env.TAVILY_API_KEY
  if (env.DEEPSEEK_API_KEY) process.env.DEEPSEEK_API_KEY = env.DEEPSEEK_API_KEY

  return env
}

export const EnvLoader = async () => ({
  config: (cfg: any) => {
    const env = loadEnv()

    const brave = cfg?.mcp?.["brave-search"]
    if (brave && typeof brave === "object") {
      brave.environment = brave.environment || {}
      if (env.BRAVE_API_KEY) brave.environment.BRAVE_API_KEY = env.BRAVE_API_KEY
    }

    const tavily = cfg?.mcp?.tavily
    if (tavily && typeof tavily === "object") {
      tavily.headers = tavily.headers || {}
      if (env.TAVILY_API_KEY) tavily.headers.Authorization = `Bearer ${env.TAVILY_API_KEY}`
    }

    if (env.DEEPSEEK_API_KEY) {
      process.env.DEEPSEEK_API_KEY = env.DEEPSEEK_API_KEY
    }
  },
})
