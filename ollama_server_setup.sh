#! /usr/bin/env bash

set -e

echo "*** Ollama Server Setup ***"

export LOGFILES=$HOME/Logfiles
mkdir --parents $LOGFILES

echo "Creating ollama server - you can ignore error if it already exists"
# https://hub.docker.com/r/ollama/ollama#start-the-container
podman run \
  -d --gpus=all \
  -v ollama:/root/.ollama \
  -p 11434:11434 \
  --name ollama \
  docker.io/ollama/ollama:latest \
  || true

if [[ $(podman ps | grep ollama | wc -l) == "0" ]]
then
  echo "ollama server is not running - starting it"
  podman start ollama || true
fi

for model in \
  deepseek-coder-v2:latest \
  glm-4.7-flash:latest \
  gpt-oss:latest \
  llama3.1:latest \
  mistral:latest\
  qwen3-coder:latest \

do
  echo "pulling $model"
  /usr/bin/time podman exec ollama ollama pull $model \
    > $LOGFILES/$model.log 2>&1

done

echo "*** Finished Ollama Server Setup ***"
echo ""
