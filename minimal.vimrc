" install: curl https://raw.githubusercontent.com/ryanolsonx/vim-lsp-javascript/master/minimal.vimrc -o /tmp/minimal.vimrc
" uninstall: rm /tmp/plug.vim && rm -rf /tmp/plugged
" run vim/neovim with minimal.vimrc
" vim -u /tmp/minimal.vimrc +PlugInstall
set nocompatible

if !filereadable('/tmp/plug.vim')
  silent !curl --insecure -fLo /tmp/plug.vim
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

source /tmp/plug.vim

call plug#begin('/tmp/plugged')
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-sleuth'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'lgranie/vim-lsp-java'
call plug#end()

runtime! vim-sensible/plugin

set hidden laststatus=2

imap <c-space> <Plug>(asyncomplete_force_refresh)
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>\<cr>" : "\<cr>"
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif
