# Agent setup

Este documento describe la arquitectura de agentes del fork. Para instalar y usar el sistema, consulta `README.md`.

## Principios

- OpenCode 1.19.5 (V1).
- Sin `model` ni `temperature` en los agentes: usan el modelo activo de la sesión.
- Sin `mcp:` en el frontmatter: los permisos se aplican con `permission`.
- El orquestador no busca directamente; delega en los subagentes de investigación.
- El agente de contenido no investiga; escribe solo en `content/`.

## Agentes

| Agente | Modo | Escritura | Búsqueda | Delegación |
|---|---|---|---|---|
| `life-strategy-agent` | primary | `plans/`, `research/` | Ninguna | `research-brave`, `research-tavily`, `research-deepseek`, `content-strategy-agent` |
| `research-brave` | subagent | Ninguna | `brave-search_*` | Ninguna |
| `research-tavily` | subagent | Ninguna | `tavily_*` | Ninguna |
| `research-deepseek` | subagent | Ninguna | `deepseek_search` | Ninguna |
| `content-strategy-agent` | subagent | `content/` | Ninguna | Ninguna |

## Enrutamiento

El plugin `.opencode/plugins/pas-router.ts`:

1. Detecta `[search:brave]`, `[search:tavily]` o `[search:deepseek]`.
2. Elimina la directiva del prompt.
3. Añade una instrucción para usar el subagente `research-<proveedor>`.
4. Si la directiva no existe, el orquestador usa DeepSeek.
5. Si el proveedor no existe, devuelve un error con la lista de proveedores válidos.

## Herramientas

- Brave: MCP local `@modelcontextprotocol/server-brave-search` con `npx`.
- Tavily: MCP remoto `https://mcp.tavily.com/mcp/` con `Authorization: Bearer`.
- DeepSeek: tool `deepseek_search` registrada por el plugin; llama a `POST https://api.deepseek.com/v1/tools/search`.

## Comandos

Los comandos conservan la expansión `@.opencode/context/...` de OpenCode V1. Los comandos de contenido usan `subtask: false` para ejecutarse en la sesión actual.

## Dependencias

`.opencode/package.json` declara `@opencode-ai/plugin`. OpenCode instala esa dependencia al iniciar. No hay servidor MCP local de DeepSeek ni paquetes propios que publicar.
