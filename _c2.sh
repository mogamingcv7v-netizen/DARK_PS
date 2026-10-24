#!/usr/bin/env sh
# replicate ONLY the checksum stage of the installer, with tracing
set -x
cd "$HOME"
rm -rf "$HOME/.local/share/darkps"
mkdir -p "$HOME/.local/share/darkps"
curl -fsSL http://127.0.0.1:7862/install.sh -o /tmp/dp_inst.sh
DP_SHA=$(grep -o '[0-9a-f]\{64\}' /tmp/dp_inst.sh | head -1)
echo "EMBEDDED=$DP_SHA"
curl -fsSL http://127.0.0.1:7862/agent.tar.gz -o "$HOME/.local/share/darkps/agent.tar.gz"
ls -l "$HOME/.local/share/darkps/agent.tar.gz"
got=$(sha256sum "$HOME/.local/share/darkps/agent.tar.gz" | cut -d' ' -f1 | tr -d '\r')
echo "GOT=$got"
[ "$got" = "$DP_SHA" ] && echo CHECKSUM_OK || echo CHECKSUM_BAD
