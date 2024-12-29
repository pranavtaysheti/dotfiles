#!/bin/env bash

curl -L git.io/antigen > antigen.zsh #install antigen
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply pranavtaysheti #bootstrap chezmoi

echo "Changing default shell to better one..."
chsh -s $(which zsh)

echo "Continuing with BLING!! press Ctrl + C in 10s for simple setup"
sleep 10

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" #install Homebrew
brew bundle --file .Brewfile #install homebrew bling

echo "Removing bootstraped chezmoi binary"
rm -rf "bin/chezmoi"
