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

#echo "Pulling model : gemma:2b"
#ollama pull gemma:2b
#echo "Pulling model : gemma:7b"
#ollama pull gemma:7b

echo "Downloaded all Modules, now install webui and explore them."

