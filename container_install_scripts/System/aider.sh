#! /usr/bin/env bash

set -e

echo "** Aider **"

source $HOME/.bash_aliases

python3 -m venv $AIDER_VENV
source $AIDER_VENV/bin/activate
    python -m pip install aider-install
    aider-install
    deactivate

echo "** Finished Aider **"
echo ""
