" Auto-install vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins
filetype plugin on

call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdcommenter'
Plug 'itchyny/lightline.vim'
Plug 'mhinz/vim-signify'

call plug#end()

" Misc
set laststatus=2
set noshowmode
set number
set updatetime=100 "for faster vim-signify updates
