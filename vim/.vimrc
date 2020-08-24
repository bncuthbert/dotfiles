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

call plug#end()

" Misc
set laststatus=2
set noshowmode
