#!/bin/bash

#curl https://ollama.ai/install.sh | sh
curl https://ollama.com/install.sh | sh

echo "-----------------------------";
echo "Checking Ollama Version .."
echo "You should see the version number. "
echo "If you encounter a \"Segmentation fault\", "
echo "it likely means that you are not using the latest CPU, "
echo "or the virtual CPU does not have access to all the instructions of the main CPU"
echo "-----------------------------";
sleep 5
ollama -v
echo "-----------------------------";
