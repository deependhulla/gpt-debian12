#!/bin/bash

curl https://ollama.ai/install.sh | sh

#curl -fsSL https://bun.sh/install | bash
#source /root/.bashrc


#git clone https://github.com/ollama-webui/ollama-webui.git /opt/ollama-webui
# User-friendly WebUI for LLMs (Formerly Ollama WebUI)
git clone https://github.com/open-webui/open-webui /opt/ollama-webui
/bin/cp -p extra-files/start-main.sh /opt/ollama-webui/backend/
cd /opt/ollama-webui
#/bin/cp -p example.env .env
/bin/cp -p .env.example .env
echo "Installing npm - nodejs modules"
npm i --silent
echo "Building using npm ..will take few min"
npm run build --silent 1>/dev/null 2>/dev/null
npm audit fix --silent
cd /opt/ollama-webui/backend
python3 -m venv env
source env/bin/activate

echo "Downloading and Installing all Python requirement packages"
echo "Around 5.6GB ..will take 10-20 min..."
pip install wheel -U
pip install  -r requirements.txt -U 
/opt/ollama-webui/backend/start-main.sh
echo "Log in /var/log/ollama-webui.log"
echo "Done ready to use access via http://<IP_ADDRESS>:8080/"
#or use bun
#/root/.bun/bin/bun
