#! /usr/bin/env bash

set -e

echo "*** Ollama Server Setup ***"

export LOGFILES=$HOME/Logfiles
mkdir --parents $LOGFILES

echo "Starting ollama server"
# https://hub.docker.com/r/ollama/ollama#start-the-container
podman run \
  -d --gpus=all \
  -v ollama:/root/.ollama \
  -p 11434:11434 \
  --name ollama \
  docker.io/ollama/ollama:latest \
  || true

for model in \
  glm-4.7-flash:latest \
  gpt-oss:latest \
  qwen3-coder:latest \
  deepseek-coder-v2:latest \
  mistral:7b-instruct-v0.3-q4_K_M

do
  echo "pulling $model"
  /usr/bin/time podman exec ollama ollama pull $model \
    > $LOGFILES/$model.log 2>&1

done

echo "*** Finished Ollama Server Setup ***"
echo ""
