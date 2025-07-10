
if v:progname =~? "evim"
  finish
endif

" If not neovim, Get the vim defaults that most users want.
if !has('nvim')
  source $VIMRUNTIME/defaults.vim
endif

if has("vms")
  set nobackup		
else
  set backup		
  if has('persistent_undo')
    set undofile	
  endif
endif

" My own additions
colorscheme default
syntax on
syntax enable
set autoindent
set number
set relativenumber
set expandtab
set tabstop=4
set shiftwidth=4
"Commented out liens there are already in defaults
"set showcmd
"set wildmenu
"set ttimeout
"set ttimeoutlen=100
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz
nnoremap <C-e> <C-e>j
nnoremap <C-y> <C-y>k
map \p i(<Esc>ea)<Esc>
map \c i{<Esc>ea}<Esc>
map \q i"<Esc>ea"<Esc>

if &t_Co > 2 || has("gui_running")
  " Switch on highlighting the last used search pattern.
  set hlsearch
endif

" Put these in an autocmd group, so that we can delete them easily.
augroup vimrcEx
  au!

" For all text files set 'textwidth' to 78 characters.
autocmd FileType text setlocal textwidth=78
augroup END

if has('syntax') && has('eval')
  packadd! matchit
endif
