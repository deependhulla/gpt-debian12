#!/bin/bash
cd /opt/

curl https://ollama.ai/install.sh | sh

#curl -fsSL https://bun.sh/install | bash
#source /root/.bashrc

cd /opt/
git clone https://github.com/ollama-webui/ollama-webui.git
cd - 
cd /opt/ollama-webui
/bin/cp -RPp example.env .env

npm i
npm run build
npm audit fix
cd -
cd /opt/ollama-webui/backend
python3 -m venv env
source env/bin/activate
pip install -r requirements.txt -U
/bin/cp extra-files/start-main.sh /opt/ollama-webui/backend/
/opt/ollama-webui/backend/start-main.sh

#or use bun
#/root/.bun/bin/bun
