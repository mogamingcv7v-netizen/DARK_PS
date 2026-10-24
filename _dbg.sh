#!/usr/bin/env bash
cd "$HOME"
curl -fsSL http://127.0.0.1:7862/install.sh -o /tmp/dp_inst.sh
echo "install.sh bytes: $(wc -c < /tmp/dp_inst.sh), sha74-loc: $(grep -o '[0-9a-f]\{64\}' /tmp/dp_inst.sh | head -1)"
rm -rf "$HOME/.local/share/darkps/agent.tar.gz"
/tmp/dp_inst.sh 2>&1 | tr '\r' '\n' | grep -E '✓ agent|\>|checksum|error' | head -8
echo "EXIT=$?"
echo "--- sh mode, sha stage traced:"
DARKPS_URL=http://127.0.0.1:7862 sh -x /tmp/dp_inst.sh 2>&1 | grep -E 'got=|want=|sha256sum|checksum' | head -10
