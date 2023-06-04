#!/bin/sh
url="https://raw.githubusercontent.com/afa5e/give/main/give"
output_file="give"

if [ ! -d "$HOME/give1/" ]; then
    cd $HOME
    mkdir give1
fi

cd $HOME/give1/

wget "$url" -O "$output_file"

chmod +x give

case "$SHELL" in
  */bash) echo 'export PATH="$PATH:'"$HOME/give/"'"' >> ~/.bashrc;;
  */zsh) echo 'export PATH="$PATH:'"$HOME/give/"'"' >> ~/.zshrc;;
esac