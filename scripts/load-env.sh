#!/usr/bin/env bash
# Load an explicit allowlist of variables from .env.
# This file is sourced by scripts/opencode-pas and scripts/smoke-test.sh.
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
ENV_FILE="${PAS_ENV_FILE:-$ROOT/.env}"

if [ ! -f "$ENV_FILE" ]; then
  echo "ERROR: falta $ENV_FILE. Ejecuta ./install.sh y edita .env." >&2
  return 1 2>/dev/null || exit 1
fi

allowed=" BRAVE_API_KEY TAVILY_API_KEY TAVILY_API_RESEARCHER TAVILY_MCP_URL URL_TAVILY_REMOTE_MCP DEEPSEEK_API_KEY DeepSeek_Search_API PAS_DEFAULT_PROVIDER PAS_MAX_RESULTS PAS_TIMEOUT_MS "

while IFS='=' read -r key raw || [ -n "$key" ]; do
  key="${key#"${key%%[![:space:]]*}"}"
  key="${key%"${key##*[![:space:]]}"}"
  [ -n "$key" ] || continue
  case "$key" in
    \#*) continue ;;
  esac
  case "$allowed" in
    *" $key "*) ;;
    *) continue ;;
  esac

  value="$raw"
  value="${value#"${value%%[![:space:]]*}"}"
  value="${value%"${value##*[![:space:]]}"}"
  value="${value%\"}"
  value="${value#\"}"
  value="${value%\'}"
  value="${value#\'}"

  export "$key=$value"
done < "$ENV_FILE"

if [ -z "${TAVILY_API_KEY:-}" ] && [ -n "${TAVILY_API_RESEARCHER:-}" ]; then
  export TAVILY_API_KEY="$TAVILY_API_RESEARCHER"
fi

if [ -z "${DEEPSEEK_API_KEY:-}" ] && [ -n "${DeepSeek_Search_API:-}" ]; then
  export DEEPSEEK_API_KEY="$DeepSeek_Search_API"
fi
