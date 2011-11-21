#!/bin/sh
VIMHOME=~/.vim

warn() {
    echo "$1" >&2
}

die() {
    warn "$1"
    exit 1
}

[ -e "$VIMHOME/vimrc" ] && die "$VIMHOME/vimrc already exists."
[ -e "~/.vim" ] && die "~/.vim already exists."
[ -e "~/.vimrc" ] && die "~/.vimrc already exists."

git clone git://github.com/miiicasa/vimrc.git "$VIMHOME"
cd "$VIMHOME"
git submodule update --init

cd ~
ln -s .vim/.vimrc .vimrc

echo "miiiCasa VIM configuration has been installed."
