# Personal Agent Systems — OpenCode V1

Fork de [Personal Agent Systems](https://github.com/darrenhinde/personal-agent-systems) adaptado para OpenCode 1.19.5. Mantiene el modelo de trabajo original —clonar el repositorio y ejecutar OpenCode dentro— y añade búsqueda con Brave, Tavily y DeepSeek.

Este fork no incluye un archivo `LICENSE`. Conserva la referencia al proyecto original y no añade ni sustituye licencias.

## Requisitos

- OpenCode 1.19.5.
- Node.js 20 o superior y `npx` para el servidor MCP de Brave.
- Una clave de Tavily y otra de DeepSeek para usar esos proveedores.

## Inicio rápido

```bash
git clone https://github.com/paginaviva/personal-agent-systems-opencode-v1.git
cd personal-agent-systems-opencode-v1
./install.sh
```

Edita `.env` y añade las claves:

```bash
BRAVE_API_KEY=
TAVILY_API_KEY=
DEEPSEEK_API_KEY=
```

Después inicia OpenCode:

```bash
./scripts/opencode-pas
```

También puedes usar el procedimiento original: exportar las variables y ejecutar `opencode` directamente.

```bash
set -a
. ./.env
set +a
opencode
```

## Variables de entorno

| Variable | Obligatoria | Uso |
|---|---|---|
| `BRAVE_API_KEY` | No | Búsqueda con Brave. Sin clave, el servidor MCP no arranca, pero el resto del sistema funciona. |
| `TAVILY_API_KEY` | Para Tavily | Búsqueda con Tavily. |
| `DEEPSEEK_API_KEY` | Para DeepSeek | Búsqueda con DeepSeek. |
| `PAS_DEFAULT_PROVIDER` | No | Proveedor por defecto. Valor inicial: `deepseek`. |
| `PAS_MAX_RESULTS` | No | Resultados por búsqueda. Valor inicial: `5`. |
| `PAS_TIMEOUT_MS` | No | Tiempo máximo de búsqueda. Valor inicial: `30000`. |

`scripts/load-env.sh` acepta también los alias `TAVILY_API_RESEARCHER` y `DeepSeek_Search_API`.

## Proveedores y directivas

| Proveedor | Integración | Directiva |
|---|---|---|
| Brave | MCP local existente con `npx` | `[search:brave]` |
| Tavily | MCP remoto con cabecera `Authorization` | `[search:tavily]` |
| DeepSeek | Tool del plugin `pas-router` | `[search:deepseek]` |

Si no hay directiva, se usa DeepSeek. El orquestador delega en el subagente correspondiente; no busca directamente.

## Agentes

| Agente | Modo | Función |
|---|---|---|
| `life-strategy-agent` | primary | Orquesta planificación, investigación y contenido. |
| `research-brave` | subagent | Investiga con Brave. Solo lectura. |
| `research-tavily` | subagent | Investiga con Tavily. Solo lectura. |
| `research-deepseek` | subagent | Investiga con DeepSeek. Solo lectura. |
| `content-strategy-agent` | subagent | Escribe y edita contenido en `content/`. |

Ningún agente fija un modelo. Todos usan el modelo activo de la sesión de OpenCode.

## Comandos

- `/research` — investiga con el proveedor indicado o con DeepSeek.
- `/blog-post` — escribe un artículo en `content/blog-posts/`.
- `/twitter-thread` — escribe un hilo en `content/social-media/`.
- `/daily-plan`, `/daily-setup`, `/evening-review`, `/weekly-review`, `/monthly-review` — planificación y revisiones.

## Permisos

- El orquestador escribe solo en `plans/` y `research/`.
- Los subagentes de investigación no escriben, no usan la shell y solo acceden a su proveedor.
- El agente de contenido escribe solo en `content/`.
- La tool integrada `websearch` está denegada.
- Los secretos se leen desde el entorno; `.env` no se versiona.

## Estructura

```text
.
├── .opencode/
│   ├── agent/
│   ├── command/
│   ├── context/
│   ├── plugins/pas-router.ts
│   ├── package.json
│   └── package-lock.json
├── content/
├── plans/
├── research/
├── scripts/
│   ├── load-env.sh
│   ├── opencode-pas
│   └── smoke-test.sh
├── .env.example
├── .gitignore
├── install.sh
└── opencode.json
```

## Comprobación básica

```bash
./scripts/smoke-test.sh
```

Con `--live`, el script intenta una búsqueda real con Tavily y otra con DeepSeek. Consume cuota de los proveedores.

## Instalación en un entorno limpio

```bash
git clone https://github.com/paginaviva/personal-agent-systems-opencode-v1.git /tmp/pas-clean
cd /tmp/pas-clean
./install.sh
# edita .env
./scripts/opencode-pas
```

No se usan rutas absolutas ni configuraciones específicas del equipo de desarrollo.

## Solución de problemas

- **Brave no arranca:** falta `BRAVE_API_KEY`. Es opcional; el resto de proveedores sigue funcionando.
- **Tavily no responde:** revisa `TAVILY_API_KEY` y la conexión a `https://mcp.tavily.com/mcp/`.
- **DeepSeek no responde:** revisa `DEEPSEEK_API_KEY` y el saldo de la cuenta.
- **OpenCode no carga un agente:** ejecuta `opencode agent list` y `opencode debug agent <nombre>`.
- **Falta `@opencode-ai/plugin`:** OpenCode instala las dependencias de `.opencode/package.json` al iniciar. Si falla, revisa la conexión y vuelve a abrir OpenCode.

## Atribución

Basado en [darrenhinde/personal-agent-systems](https://github.com/darrenhinde/personal-agent-systems), confirmación `5f6a35b`. Este fork añade los proveedores Tavily y DeepSeek, la selección de proveedor por directiva, permisos por agente y la adaptación al modelo activo de OpenCode 1.19.5.
