#!/bin/bash

if [[ -a ~/.vimrc ]]; then
echo Please backup and remove ~/.vimrc first.
exit -1
fi

script_name=$(realpath $0)
script_dir=$(dirname $script_name)
vimrc_name=$script_dir/vimrc

cd ~
ln -sn $vimrc_name .vimrc
ln -snf $script_dir .vim_runtime
ls -l ~/.vimrc ~/.vim_runtime

