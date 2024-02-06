#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
cd "$SCRIPT_DIR" || exit

source env/bin/activate
./start.sh >/var/log/ollama-webui.log 2>&1 &
echo "Started ollama-webui"
