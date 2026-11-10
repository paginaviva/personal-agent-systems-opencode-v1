#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$ROOT"

echo "Personal Agent Systems — instalación portable"
echo "Repositorio: $ROOT"

if ! command -v opencode >/dev/null 2>&1; then
  echo "ERROR: opencode no está instalado o no está en PATH."
  echo "Instala OpenCode 1.19.5 y vuelve a ejecutar este script."
  exit 1
fi

echo "OpenCode: $(opencode --version)"

if command -v node >/dev/null 2>&1; then
  echo "Node: $(node --version)"
else
  echo "AVISO: node no está instalado. Brave MCP usa npx y requiere Node."
fi

if command -v npx >/dev/null 2>&1; then
  echo "npx: disponible"
else
  echo "AVISO: npx no está disponible. Brave MCP no podrá arrancar."
fi

mkdir -p content/social-media research plans
for dir in content/social-media research plans; do
  if [ ! -f "$dir/.gitkeep" ]; then
    : > "$dir/.gitkeep"
  fi
done

if [ ! -f .env ]; then
  cp .env.example .env
  chmod 600 .env
  echo "Creado .env desde .env.example. Edita .env y añade las claves."
else
  echo ".env ya existe; no se sobrescribe."
fi

warn_empty() {
  local name="$1"
  local value=""
  local key
  local raw

  while IFS='=' read -r key raw || [ -n "$key" ]; do
    key="${key#"${key%%[![:space:]]*}"}"
    key="${key%"${key##*[![:space:]]}"}"
    [ "$key" = "$name" ] || continue
    value="$raw"
    value="${value#"${value%%[![:space:]]*}"}"
    value="${value%"${value##*[![:space:]]}"}"
    value="${value%\"}"
    value="${value#\"}"
    value="${value%\'}"
    value="${value#\'}"
    break
  done < .env

  if [ -z "$value" ]; then
    echo "AVISO: $name está vacío en .env."
    return 1
  fi
  return 0
}

warn_empty BRAVE_API_KEY || true
warn_empty TAVILY_API_KEY || warn_empty TAVILY_API_RESEARCHER || true
warn_empty DEEPSEEK_API_KEY || warn_empty DeepSeek_Search_API || true

echo
echo "Siguiente paso:"
echo "  1. Edita .env con tus claves."
echo "  2. Ejecuta opencode desde la raíz del repositorio."
echo "  3. Selecciona life-strategy-agent con Tab/Shift+Tab o Ctrl+X A."
echo
echo "El plugin env-loader lee .env al iniciar; no hace falta exportar variables."
