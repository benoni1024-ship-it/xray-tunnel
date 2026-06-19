#!/bin/bash
set -e
echo "[*] Installing Xray..."
curl -sL https://github.com/XTLS/Xray-core/releases/latest/download/Xray-linux-64.zip -o /tmp/xray.zip
unzip -o /tmp/xray.zip -d /tmp/xray
sudo mv /tmp/xray/xray /usr/local/bin/xray
sudo chmod +x /usr/local/bin/xray
sudo mkdir -p /etc/xray
sudo cp /workspaces/xray-tunnel/config.json /etc/xray/config.json
echo "[*] Starting Xray..."
sudo xray run -config /etc/xray/config.json &
echo "[+] Xray running on port 10000"
echo "[+] UUID: 911f07ce-8b75-42bf-8ca0-7635500c18df"
wait
