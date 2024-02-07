#!/bin/bash

echo "Pulling model : tinyllama"
ollama pull tinyllama
echo "Pulling model : llama2"
ollama pull llama2
echo "Pulling model : phi"
ollama pull phi
echo "Pulling model : llava"
ollama pull llava
echo "Pulling model : mistral"
ollama pull mistral
echo "Pulling model : codellama"
ollama pull codellama

echo "Download all Modules now install webui and explore them."

