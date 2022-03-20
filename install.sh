#!/bin/sh

echo "Start to install vim config."
cd ..
dir="$(pwd)"

echo "${dir}"
cd ~ || exit

echo ".vim dir: ${dir}/.vim"
ln -sf "${dir}"/.vim .vim

echo "🚀 Successfully installed the vim config!"
