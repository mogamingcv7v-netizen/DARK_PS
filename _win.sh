#!/usr/bin/env bash
cd "$HOME"
curl -fsSL http://127.0.0.1:7862/install.sh | sh 2>&1 | tr '\r' '\n' | grep -Ev '^\s*$' | tail -8
echo "PIPE_EXIT=${PIPESTATUS[0]}"
echo "--- shim:"
cat "$HOME/.local/bin/darkps.cmd" 2>/dev/null || echo "NO SHIM"
echo "--- windows user PATH contains bin dir?"
powershell.exe -NoProfile -Command '([Environment]::GetEnvironmentVariable("Path","User") -split ";") -like "*.local\bin*" | ForEach-Object { $_ }'
