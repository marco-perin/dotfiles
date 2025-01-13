" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Set 24-bit colors if supported
if (has("termguicolors"))
    set termguicolors
endif

" Enable mouse (for normal and visual mode)
set mouse=nv
set clipboard=unnamedplus
" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Turn syntax highlighting on.
syntax on

set number
set relativenumber

set cursorline

" Show partial command you type in the last line of the screen.
set showcmd


" Show the mode you are on the last line.
set showmode

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

" Set the commands to save in history default number is 20.
set history=1000

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

set cursorline
" set cursorcolumn

set autoindent
set smartindent
set smarttab
" Use spaces instead of tab
set expandtab
" Start scrolling document when cursor is 8 line from the bottom of the window
set scrolloff=8
" Show error in line instead of number
set signcolumn=number

set showcmd
" Conceal first-level keywords
set conceallevel=1

" Don't unse swapfile or backup, use undodir in undofile
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile

set ignorecase
set smartcase
set incsearch
set hlsearch
" Stop highlighting after search
nnoremap <CR> :noh<CR><CR>:<backspace>

" Use Ctrl+h/j/k/l to switch windows
nnoremap <C-H> <C-W>h
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l



set ttymouse=sgr
set balloonevalterm

" Styled and colored underline support
let &t_AU = "\e[58:5:%dm"
let &t_8u = "\e[58:2:%lu:%lu:%lum"
let &t_Us = "\e[4:2m"
let &t_Cs = "\e[4:3m"
let &t_ds = "\e[4:4m"
let &t_Ds = "\e[4:5m"
let &t_Ce = "\e[4:0m"
" Strikethrough
let &t_Ts = "\e[9m"
let &t_Te = "\e[29m"
" Truecolor support
let &t_8f = "\e[38:2:%lu:%lu:%lum"
let &t_8b = "\e[48:2:%lu:%lu:%lum"
let &t_RF = "\e]10;?\e\\"
let &t_RB = "\e]11;?\e\\"
" Bracketed paste
let &t_BE = "\e[?2004h"
let &t_BD = "\e[?2004l"
let &t_PS = "\e[200~"
let &t_PE = "\e[201~"
" Cursor control
let &t_RC = "\e[?12$p"
let &t_SH = "\e[%d q"
let &t_RS = "\eP$q q\e\\"
let &t_SI = "\e[5 q"
let &t_SR = "\e[3 q"
let &t_EI = "\e[1 q"
let &t_VS = "\e[?12l"
" Focus tracking
let &t_fe = "\e[?1004h"
let &t_fd = "\e[?1004l"
execute "set <FocusGained>=\<Esc>[I"
execute "set <FocusLost>=\<Esc>[O"
" Window title
let &t_ST = "\e[22;2t"
let &t_RT = "\e[23;2t"

" vim hardcodes background color erase even if the terminfo file does
" not contain bce. This causes incorrect background rendering when
" using a color theme with a background color in terminals such as
" kitty that do not support background color erase.
let &t_ut=''



"set background=dark
"colorscheme gruvbox
" evening, slate 
" industry
colorscheme slate

autocmd FileType c,cpp colorscheme gruvbox
" Netrw windows size in percentage
let g:netrw_winsize=35

" Enble ALE autocompletion
let g:ale_completion_enabled = 1
let g:ale_floating_window_border = ['│', '─', '╭', '╮', '╯', '╰', '│', '─']

