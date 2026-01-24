#! /usr/bin/env bash

set -e

echo "** Terminal Setup **"

echo "Installing Starship globally"
./install_starship.sh
mkdir --parents $HOME/.config
cp ./starship.toml $HOME/.config/starship.toml

echo "Adding Starship prompt to bash"
echo 'eval "$(starship init bash)"' >> $HOME/.bashrc

echo "Installing nerd font with ligatures"
./nerd_fonts.sh

echo ""
echo "1. Set your terminal to use the nerd font"
echo "2. Restart 'bash' or open a new terminal window"
echo ""

echo "** Finished Terminal Setup **"
echo ""
