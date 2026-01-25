#! /usr/bin/env bash

set -e

echo "** Ollama **"

source $HOME/.bash_aliases

pushd $HOME/.local > /dev/null
  echo "Downloading $OLLAMA_VERSION release tarball"
  wget --no-clobber --quiet $OLLAMA_URL
  echo "Extracting binaries to $HOME/.local"
  tar xf $OLLAMA_TARBALL
  
popd > /dev/null

echo "** Finished Ollama **"
echo ""
