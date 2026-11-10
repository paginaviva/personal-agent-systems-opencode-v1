# Personal Agent System OpenCode V1

This document is also available in English: [README.md](README.md).

## Qué es este proyecto

Personal Agent System es un sistema de organización personal y creación de contenido construido sobre OpenCode. Coordina planificación, investigación y redacción mediante agentes, comandos y archivos de contexto. El proyecto original incluye un orquestador de estrategia personal, un asistente de investigación y un estratega de contenido, junto con comandos para planes diarios, revisiones, investigación, artículos y hilos de redes sociales. También incluye archivos de contexto para la voz de marca, los patrones de blog y redes sociales y los objetivos personales, y utiliza Brave Search y Git mediante MCP.

Un fork es una copia de un proyecto que evoluciona de forma independiente y conserva la atribución al proyecto original. Este fork parte de [darrenhinde/personal-agent-systems](https://github.com/darrenhinde/personal-agent-systems) y mantiene su estructura de agentes, comandos y contexto.

### Qué aporta este fork

- OpenCode 1.19.5 (V1) como versión objetivo.
- Brave, Tavily y DeepSeek como proveedores de búsqueda.
- DeepSeek como proveedor por defecto y selección mediante `[search:brave]`, `[search:tavily]` o `[search:deepseek]`.
- Uso del modelo activo de la TUI, sin modelos ni temperaturas fijas.
- Permisos de mínimo privilegio por agente.
- DeepSeek integrado como tool del repositorio, sin MCP local ni procesos adicionales.
- Instalación portable con `install.sh` y carga automática de `.env` al iniciar OpenCode.
- Documentación de instalación, configuración, comandos, permisos y solución de problemas.

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

Después inicia OpenCode desde la raíz del repositorio:

```bash
opencode
```

Dentro de la TUI, selecciona `life-strategy-agent` con `Tab` o `Shift+Tab`, o abre la lista de agentes con `Ctrl+X` y luego `A`. `opencode.json` ya lo establece como agente por defecto, así que puede aparecer seleccionado al iniciar.

No es necesario exportar las variables manualmente: `.opencode/plugins/env-loader.ts` lee `.env` al iniciar y aplica las claves a la configuración.

## Variables de entorno

| Variable | Obligatoria | Uso |
|---|---|---|
| `BRAVE_API_KEY` | No | Búsqueda con Brave. Sin clave, el servidor MCP no arranca, pero el resto del sistema funciona. |
| `TAVILY_API_KEY` | Para Tavily | Búsqueda con Tavily. |
| `DEEPSEEK_API_KEY` | Para DeepSeek | Búsqueda con DeepSeek. |
| `PAS_MAX_RESULTS` | No | Resultados por búsqueda. Valor inicial: `5`. |
| `PAS_TIMEOUT_MS` | No | Tiempo máximo de búsqueda. Valor inicial: `30000`. |

El cargador de `.env` acepta también los alias `TAVILY_API_RESEARCHER` y `DeepSeek_Search_API`.

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
- Los subagentes de investigación no escriben, no usan la shell y solo acceden a su proveedor y a `webfetch` para ampliar resultados.
- El agente de contenido escribe solo en `content/`.
- La tool integrada `websearch` está denegada.
- Los secretos se cargan desde `.env` al iniciar; `.env` no se versiona.

## Estructura

```text
.
├── .opencode/
│   ├── agent/
│   ├── command/
│   ├── context/
│   ├── plugins/env-loader.ts
│   ├── plugins/pas-router.ts
│   ├── package.json
│   └── package-lock.json
├── content/
├── plans/
├── research/
├── scripts/
│   ├── load-env.sh
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
opencode
```

Selecciona `life-strategy-agent` dentro de la TUI. La carga de `.env` la realiza el plugin del repositorio; no se necesitan scripts de inicio ni exportación manual.

No se usan rutas absolutas ni configuraciones específicas del equipo de desarrollo.

## Solución de problemas

- **Las claves no se cargan:** revisa que `.env` esté en la raíz del repositorio. `.opencode/plugins/env-loader.ts` lo lee al iniciar; no hace falta exportar variables.
- **Brave no arranca:** falta `BRAVE_API_KEY`. Es opcional; el resto de proveedores sigue funcionando.
- **Tavily no responde:** revisa `TAVILY_API_KEY` y la conexión a `https://mcp.tavily.com/mcp/`.
- **DeepSeek no responde:** revisa `DEEPSEEK_API_KEY` y el saldo de la cuenta.
- **OpenCode no carga un agente:** ejecuta `opencode agent list` y `opencode debug agent <nombre>`.
- **Falta `@opencode-ai/plugin`:** OpenCode instala las dependencias de `.opencode/package.json` al iniciar. Si falla, revisa la conexión y vuelve a abrir OpenCode.

## Atribución

Basado en [darrenhinde/personal-agent-systems](https://github.com/darrenhinde/personal-agent-systems), confirmación `5f6a35b`. Este fork añade los proveedores Tavily y DeepSeek, la selección de proveedor por directiva, permisos por agente y la adaptación al modelo activo de OpenCode 1.19.5.
