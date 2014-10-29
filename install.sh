#!/bin/sh

cd $(dirname $0)
dotfiles=$(pwd)

for dotfile in $(find dot-* -type f); do
  dotdir=$(dirname $dotfile)
  dotfile=$(basename $dotfile)
  if [ x"$dotdir" == x"." ]; then
    ndotdir=
    dotdir=
    ndotfile="."${dotfile##dot-}
  else
    ndotdir="."${dotdir##dot-}/
    dotdir=${dotdir}/
    ndotfile=${dotfile}
    mkdir -vp $HOME/${ndotdir}
  fi
  ln -vnsf ${dotfiles}/${dotdir}${dotfile} $HOME/${ndotdir}${ndotfile}
done

