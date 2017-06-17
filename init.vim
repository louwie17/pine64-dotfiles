call plug#begin('~/.config/nvim/plugged')

Plug 'bogado/file-line'
Plug 'mhartington/oceanic-next'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-sleuth'

Plug 'Yggdroot/indentLine'
  let g:indentLine_char = '┆'

Plug 'benekastah/neomake'
  autocmd! BufWritePost * Neomake

Plug 'fatih/vim-go', { 'for': 'go' }
  " included in polyglot, but doesn't seem to work

Plug 'itchyny/lightline.vim'
  set noshowmode
  let g:lightline = {
       \ 'colorscheme': 'Tomorrow_Night',
       \ }

Plug 'ntpeters/vim-better-whitespace'
  " provides :StripWhitespace

Plug 'scrooloose/nerdtree'
  map <C-n> :NERDTreeToggle<CR>
  let g:NERDTreeWinSize=50

Plug 'tpope/vim-fugitive'
  " provides :Gblame
  "   press ~ on a commit to 're-blame'

call plug#end()

filetype plugin indent on
syntax enable
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
if (has("termguicolors"))
  set termguicolors
endif
colorscheme OceanicNext
set background=dark
highlight Normal ctermbg=NONE guibg=NONE
highlight LineNr ctermbg=NONE guibg=NONE
highlight SignColumn ctermbg=NONE guibg=NONE

set clipboard+=unnamedplus
set ignorecase
set linebreak
set nobackup
set number
set ruler
set scrolloff=3
set tabstop=4

imap jj <Esc>
nnoremap <Space> :
com! W w
com! Q q
com! Wq wq
com! WQ wq
