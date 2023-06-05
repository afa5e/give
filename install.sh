#!/bin/sh
url="https://raw.githubusercontent.com/afa5e/give/main/give"

dir="$HOME/give/"

if [ ! -d "$dir" ]; then
    cd $HOME
    mkdir give
fi

cd $dir

wget "$url" -O give

chmod +x give

case "$SHELL" in
    */bash)
        case ":$PATH:" in
            *:$HOME/give:*) ;;
            *)  echo 'export PATH="$PATH:'"$dir"'"' >> ~/.bashrc
        esac
        ;;
    */zsh)
        case ":$PATH:" in
            *:$HOME/give:*) ;;
            *)  echo 'export PATH="$PATH:'"$dir"'"' >> ~/.zshrc;;
        esac
        ;;
esac
