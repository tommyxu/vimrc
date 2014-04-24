#!/usr/bin/python

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
mayansmoke https://github.com/vim-scripts/mayansmoke
nerdtree https://github.com/scrooloose/nerdtree
nginx.vim https://github.com/vim-scripts/nginx.vim
open_file_under_cursor.vim https://github.com/amix/open_file_under_cursor.vim
snipmate-snippets https://github.com/scrooloose/snipmate-snippets
taglist.vim https://github.com/vim-scripts/taglist.vim
tlib https://github.com/vim-scripts/tlib
vim-addon-mw-utils https://github.com/MarcWeber/vim-addon-mw-utils
vim-bundle-mako https://github.com/sophacles/vim-bundle-mako
vim-coffee-script https://github.com/kchmck/vim-coffee-script
vim-colors-solarized https://github.com/altercation/vim-colors-solarized
vim-indent-object https://github.com/michaeljsmith/vim-indent-object
vim-less https://github.com/groenewege/vim-less
vim-markdown https://github.com/tpope/vim-markdown
vim-pyte https://github.com/therubymug/vim-pyte
vim-snipmate https://github.com/garbas/vim-snipmate
vim-snippets https://github.com/honza/vim-snippets
vim-surround https://github.com/tpope/vim-surround
vim-expand-region https://github.com/terryma/vim-expand-region
vim-multiple-cursors https://github.com/terryma/vim-multiple-cursors
vim-fugitive https://github.com/tpope/vim-fugitive
vim-airline https://github.com/bling/vim-airline
goyo.vim https://github.com/junegunn/goyo.vim
vim-zenroom2 https://github.com/amix/vim-zenroom2
syntastic https://github.com/scrooloose/syntastic
vim-repeat https://github.com/tpope/vim-repeat
vim-commentary https://github.com/tpope/vim-commentary
vim-golang https://github.com/jnwhiteh/vim-golang
base16-vim https://github.com/chriskempson/base16-vim
jedi-vim https://github.com/davidhalter/jedi-vim
jellybeans.vim https://github.com/nanotech/jellybeans.vim
molokai https://github.com/tomasr/molokai
numbers.vim https://github.com/myusuf3/numbers.vim
tabular https://github.com/godlygeek/tabular
vim-textobj-line https://github.com/kana/vim-textobj-line
vim-textobj-user https://github.com/kana/vim-textobj-user
vim-gitgutter https://github.com/airblade/vim-gitgutter
vim-easymotion https://github.com/Lokaltog/vim-easymotion
tagbar https://github.com/majutsushi/tagbar
vimim https://github.com/vimim/vimim
""".strip()

#peaksea https://github.com/vim-scripts/peaksea
# PLUGINS = """
# vimim https://github.com/vimim/vimim
# """.strip()

GITHUB_ZIP = '%s/archive/master.zip'

SOURCE_DIR = path.join(path.dirname(__file__), 'sources_non_forked')


def download_extract_replace(plugin_name, zip_path, temp_dir, source_dir):
    temp_zip_path = path.join(temp_dir, plugin_name)

    # Download and extract file in temp dir
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

    print 'Updated %s' % plugin_name


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
