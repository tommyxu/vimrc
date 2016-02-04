#!/usr/bin/env python3

import zipfile
import shutil
import tempfile
import requests

from os import path


#--- Globals ----------------------------------------------
PLUGINS = """
ack.vim https://github.com/mileszs/ack.vim
bufexplorer https://github.com/corntrace/bufexplorer
ctrlp.vim https://github.com/kien/ctrlp.vim
dash.vim https://github.com/rizzatti/dash.vim
delimitMate https://github.com/Raimondi/delimitMate
emmet-vim https://github.com/mattn/emmet-vim
goyo.vim https://github.com/junegunn/goyo.vim
gruvbox https://github.com/morhetz/gruvbox
indentLine https://github.com/Yggdroot/indentLine
jellybeans.vim https://github.com/nanotech/jellybeans.vim
molokai https://github.com/tomasr/molokai
mru https://github.com/yegappan/mru
neocomplete.vim https://github.com/Shougo/neocomplete.vim
nerdtree https://github.com/scrooloose/nerdtree
nginx.vim https://github.com/vim-scripts/nginx.vim
open_file_under_cursor.vim https://github.com/amix/open_file_under_cursor.vim
syntastic https://github.com/scrooloose/syntastic
tabular https://github.com/godlygeek/tabular
tagbar https://github.com/majutsushi/tagbar
tlib https://github.com/vim-scripts/tlib
ultisnips https://github.com/SirVer/ultisnips
vim-abolish https://github.com/tpope/vim-abolish
vim-addon-mw-utils https://github.com/MarcWeber/vim-addon-mw-utils
vim-airline https://github.com/bling/vim-airline
vim-airline-themes https://github.com/vim-airline/vim-airline-themes
vim-coffee-script https://github.com/kchmck/vim-coffee-script
vim-colors-solarized https://github.com/altercation/vim-colors-solarized
vim-commentary https://github.com/tpope/vim-commentary
vim-easymotion https://github.com/Lokaltog/vim-easymotion
vim-expand-region https://github.com/terryma/vim-expand-region
vim-filebeagle https://github.com/jeetsukumaran/vim-filebeagle
vim-fugitive https://github.com/tpope/vim-fugitive
vim-gitgutter https://github.com/airblade/vim-gitgutter
vim-go https://github.com/fatih/vim-go
vim-gradle https://github.com/tfnico/vim-gradle
vim-html-escape https://github.com/skwp/vim-html-escape
vim-indent-object https://github.com/michaeljsmith/vim-indent-object
vim-jade https://github.com/digitaltoad/vim-jade
vim-less https://github.com/groenewege/vim-less
vim-markdown https://github.com/tpope/vim-markdown
vim-multiple-cursors https://github.com/terryma/vim-multiple-cursors
vim-repeat https://github.com/tpope/vim-repeat
vim-snippets https://github.com/honza/vim-snippets
vim-surround https://github.com/tpope/vim-surround
vim-textobj-line https://github.com/kana/vim-textobj-line
vim-textobj-user https://github.com/kana/vim-textobj-user
vim-zenroom2 https://github.com/amix/vim-zenroom2
ag.vim https://github.com/rking/ag.vim
""".strip()

# CSApprox https://github.com/vim-scripts/CSApprox
# CoffeeTags https://github.com/lukaszkorecki/CoffeeTags
# YouCompleteMe https://github.com/Valloric/YouCompleteMe
# base16-vim https://github.com/chriskempson/base16-vim
# jedi-vim https://github.com/davidhalter/jedi-vim
# lusty https://github.com/sjbach/lusty
# mayansmoke https://github.com/vim-scripts/mayansmoke
# peaksea https://github.com/vim-scripts/peaksea
# snipmate-snippets https://github.com/scrooloose/snipmate-snippets
# supertab https://github.com/ervandew/supertab
# taglist.vim https://github.com/vim-scripts/taglist.vim
# vim-bundle-mako https://github.com/sophacles/vim-bundle-mako
# vim-coffee-script https://github.com/kchmck/vim-coffee-script
# vim-conque https://github.com/basepi/vim-conque
# vim-golang https://github.com/jnwhiteh/vim-golang
# vim-kolor https://github.com/zeis/vim-kolor
# vim-pyte https://github.com/therubymug/vim-pyte
# vim-signature https://github.com/kshenoy/vim-signature
# vim-snipmate https://github.com/garbas/vim-snipmate
# vim-stylus https://github.com/vim-scripts/vim-stylus

# vim-airline-themes https://github.com/vim-airline/vim-airline-themes
PLUGINS = """
ctrlsf.vim https://github.com/dyng/ctrlsf.vim
""".strip()


GITHUB_ZIP = '%s/archive/master.zip'
SOURCE_DIR = path.join(path.dirname(__file__), 'sources_non_forked')


def download_extract_replace(plugin_name, zip_path, temp_dir, source_dir):
    temp_zip_path = path.join(temp_dir, plugin_name)

    # Download and extract file in temp dir
    print(zip_path)

    req = requests.get(zip_path)
    open(temp_zip_path, 'wb').write(req.content)

    zip_f = zipfile.ZipFile(temp_zip_path)
    zip_f.extractall(temp_dir)

    plugin_temp_path = path.join(temp_dir,
                                 path.join(temp_dir, '%s-master' % plugin_name))

    # Remove the current plugin and replace it with the extracted
    plugin_dest_path = path.join(source_dir, plugin_name)

    try:
        shutil.rmtree(plugin_dest_path)
    except OSError:
        pass

    shutil.move(plugin_temp_path, plugin_dest_path)

    print('Updated %s' % plugin_name)


if __name__ == '__main__':
    temp_directory = tempfile.mkdtemp()

    try:
        for line in PLUGINS.splitlines():
            name, github_url = line.split(' ')
            zip_path = GITHUB_ZIP % github_url
            download_extract_replace(name, zip_path,
                                     temp_directory, SOURCE_DIR)
    finally:
        shutil.rmtree(temp_directory)
