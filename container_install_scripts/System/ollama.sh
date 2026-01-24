#! /usr/bin/env bash

set -e

echo "** Ollama **"

source $HOME/.bash_aliases

echo "Creating 'serve-ollama' command"
cp ./serve-ollama $HOME/.local/bin/

pushd $HOME/.local > /dev/null
  echo "Downloading $OLLAMA_VERSION release tarball"
  wget --no-clobber --quiet $OLLAMA_URL
  echo "Extracting binaries to $HOME/.local"
  tar xf $OLLAMA_TARBALL
  echo "Starting ollama server"
  $HOME/.local/bin/serve-ollama
  echo "Waiting 30 seconds for startup"
  sleep 30

  for model in \
    deepseek-coder-v2:latest

  do
    echo "pulling $model"
    /usr/bin/time $HOME/.local/bin/ollama pull $model \
      > $LOGFILES/$model.log 2>&1

  done
  
popd > /dev/null

echo "** Finished Ollama **"
echo ""
