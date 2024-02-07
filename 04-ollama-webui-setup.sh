#!/bin/bash

curl https://ollama.ai/install.sh | sh

#curl -fsSL https://bun.sh/install | bash
#source /root/.bashrc

git clone https://github.com/ollama-webui/ollama-webui.git /opt/ollama-webui
/bin/cp -p extra-files/start-main.sh /opt/ollama-webui/backend/
cd /opt/ollama-webui
/bin/cp -RPp example.env .env
echo "Installing npm - nodejs modules"
npm i --silent
echo "Building using npm ..will take few min"
npm run build --silent 1>/dev/null 2>/dev/null
npm audit fix --silent
cd /opt/ollama-webui/backend
python3 -m venv env
source env/bin/activate

echo "Downloading and Installing all Python requirement packages"
echo "Around 5.6GB ..will take few more min..."
pip install -q wheel -U
pip install -q -r requirements.txt -U 2>/dev/null
/opt/ollama-webui/backend/start-main.sh

echo "Done ready to use access via http://<IP_ADDRESS>:8080/"
#or use bun
#/root/.bun/bin/bun
