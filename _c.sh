#!/usr/bin/env bash
curl -fsSL http://127.0.0.1:7862/agent.tar.gz -o /tmp/dpa.tar.gz
NEW=$(sha256sum /tmp/dpa.tar.gz | cut -d" " -f1)
EMB=$(grep -o "__\|DP_SHA=\"[0-9a-f]\{64\}\"" /tmp/dpa.tar.gz 2>/dev/null | head -1)
EMB=$(grep -A0 'DP_SHA=' <(curl -fsSL http://127.0.0.1:7862/install.sh) | grep -o '[0-9a-f]\{64\}' | head -1)
FILE=$(sha256sum "$HOME/Downloads/ps-Agent/webui/deploy/agent.tar.gz" | cut -d" " -f1)
echo "served sha:   $NEW"
echo "embedded sha: $EMB"
echo "disk sha:     $FILE"
