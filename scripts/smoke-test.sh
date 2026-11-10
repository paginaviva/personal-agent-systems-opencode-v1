#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

# shellcheck source=/dev/null
source "$ROOT/scripts/load-env.sh"

failures=0

check() {
  local name="$1"
  shift
  if "$@"; then
    echo "OK: $name"
  else
    echo "FALLO: $name"
    failures=$((failures + 1))
  fi
}

check "opencode disponible" command -v opencode
check "configuración válida" bash -c "opencode debug config >/dev/null"
check "agente life-strategy-agent" bash -c "opencode agent list | grep -q '^life-strategy-agent '"
check "agente research-brave" bash -c "opencode agent list | grep -q '^research-brave '"
check "agente research-tavily" bash -c "opencode agent list | grep -q '^research-tavily '"
check "agente research-deepseek" bash -c "opencode agent list | grep -q '^research-deepseek '"
check "agente content-strategy-agent" bash -c "opencode agent list | grep -q '^content-strategy-agent '"

if [ -z "${TAVILY_API_KEY:-}" ]; then
  echo "AVISO: TAVILY_API_KEY no está definida; no se probará Tavily."
fi

if [ -z "${DEEPSEEK_API_KEY:-}" ]; then
  echo "AVISO: DEEPSEEK_API_KEY no está definida; no se probará DeepSeek."
fi

if [ "${1:-}" = "--live" ]; then
  echo
  echo "Comprobación real de Tavily..."
  opencode run --agent life-strategy-agent \
    "[search:tavily] Busca 'OpenCode 1.19.5 release notes' y devuelve el primer resultado con URL."

  echo
  echo "Comprobación real de DeepSeek..."
  opencode run --agent life-strategy-agent \
    "[search:deepseek] Busca 'OpenCode 1.19.5 release notes' y devuelve el primer resultado con URL."
fi

if [ "$failures" -ne 0 ]; then
  echo
  echo "Comprobaciones fallidas: $failures"
  exit 1
fi

echo
echo "Comprobación básica completada."
