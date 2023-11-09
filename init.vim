" Colorscheme
let g:main_colorscheme = "kanagawa"

let g:gruvbox_transparent_bg = 1
let g:gruvbox_contrast_dark = 'hard'

ab cs colorscheme<cr>
ab mkain colorscheme monokain<cr>
ab dglass colorscheme darkglass<cr>
ab gbox colorscheme gruvbox<cr>
ab onext colorscheme OceanicNext<cr>
ab conedark colorscheme onedark<cr>
ab ckanagawa colorscheme kanagawa<cr>
ab githubdark colorscheme github_dark_dimmed <cr>
"monokain
"darkglass
"gruvbox
"OceanicNext

" Always show statusline
set laststatus=2

set statusline=\ %t\ %y\ %m
set statusline+=\ %{&paste?'[paste]\ ':''}
set statusline+=%{get(b:,'gitsigns_status','')}
set statusline+=\%=
set statusline+=line\ %l\/%L\ "


set exrc
set secure

set wildmenu
set wildmode=longest:list,full

" Encodings
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set termencoding=utf-8

" Title
set title
set titleold="Terminal"
set titlestring=%F
autocmd BufEnter * let &titlestring = expand("%:t")
set title

" Tabs
set tabstop=4
set smarttab
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent

set fileformat=unix
filetype indent on      " load filetype-specific indent files
filetype plugin on

syntax on

" Numbers
set ruler
"set relativenumber
set number
set scrolloff=7

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase
ab ic set ignorecase
ab noic set noignorecase


" Toggle mouse support in Normal mode
set mousemodel=popup
set mouse=
function! ToggleMouse()
	if &mouse == 'a'
		set mouse=
		echo "Mouse usage disabled"
	else
		set mouse=a
		echo "Mouse usage enabled"
	endif
endfunction
nnoremap ,m :call ToggleMouse()<CR>


set novisualbell
set backspace=indent,eol,start whichwrap+=<,>,[,]
set showtabline=1 " Show tabs

" Display invisible characters
set list

" Wrap long lines
set wrap
set linebreak

if has("linebreak")
	let &sbr = nr2char(8618).' '
endif

" Disable swp files
set noswapfile
set nobackup

set clipboard=unnamedplus

set signcolumn=no

set hidden

"sound off
set visualbell t_vb=

set background=dark

set nocompatible              " be iMproved, required

" Поддержка русского языка
set langmap=!\\№\\;%?*ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;!#$%&*`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>

" Autoindent
let python_highlight_all = 1

" Before saving, cut out the gaps at the ends
autocmd BufWritePre * %s/\s\+$//e

" Smart indentation in py files
autocmd FileType python set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class,with
autocmd FileType javascript set smartindent cinwords=if,else,for,while,function,class

" Cursor

let &t_EI.="\e[1 q" "EI = normal mode
let &t_SI.="\e[6 q" "SI = visual mode
let &t_SR.="\e[3 q" "SR = insert mode


" Binds vim
let mapleader = ","

" Vmap for maintain Visual Mode after shifting > and <
vmap < <gv
vmap > >gv

cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Wq wq
cnoreabbrev wQ wq
cnoreabbrev Wa wa

" search
nnoremap n nzz
nnoremap N Nzz
" Turn off search highlight
nnoremap <silent> ,<space> :nohlsearch<CR>

" telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Past mode
map <silent> <F2> :set paste<cr>
map <silent> <F3> :set nopaste<cr>
set showmode

" camelCase => snake_case
vnoremap <silent> <Leader>c :s/\v\C(([a-z]+)([A-Z]))/\2_\l\3/g<CR>

" Folding
set foldmethod=indent
set foldcolumn=0
set foldlevel=999
nnoremap <space> za
nnoremap <C-space> zf

nmap _ +

" Save workspace
ab save wa<cr>:mksession! session.vim<cr>:qa<cr>
ab ss source session.vim<cr>

nmap gn :bn<cr>
nmap gp :bp<cr>
nmap gw :Bclose<cr>

" Windows settings
" Netrw file explorer settings
let g:netrw_banner = 0 " hide banner above files
let g:netrw_liststyle = 3 " tree instead of plain view
let g:netrw_browse_split = 0 " vertical split window when Enter pressed on file
let g:netrw_winsize = 17 " size for Lex

"nnoremap <silent> <C-n> :Lex<cr>
" NerdTree settings
ab nerd NERDTree
nnoremap <C-b> :NERDTreeToggle<cr>
let NERDTreeShowHidden=1

" Open config (init.vim)
nmap <silent> <C-w>i :tabnew ~/.config/nvim/init.vim<cr>

" Split
nmap <silent> <C-w>s :split<cr>:e.<cr><C-w>J
nmap <silent> <C-w>v :vsplit<cr>:e.<cr><C-w>L
nmap <C-w>S :split<space>
nmap <C-w>V :vsplit<space>
nmap <C-l> <C-w>w

" Window tabs
nmap <silent> <C-w>c :tabclose<CR>
nmap <silent> <C-w>t :tabnew<CR>:NERDTreeToggle<cr>
nmap <C-w>T :tabnew<space>

" Moving to tabs
nmap <Tab> gt
nmap <S-Tab> gT

" FZF
nmap <C-f>F :GFiles<CR>
nmap <C-f>f :Files<CR>

" Emmet binds
let g:user_emmet_leader_key='<C-e>'
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall


" Run Python and C files by Ctrl+h
autocmd FileType python map <buffer> <C-h> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <C-h> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>

autocmd FileType cpp map <buffer> <C-h> :w<CR>:exec '!g++' shellescape(@%, 1) '-o out; ./out'<CR>
autocmd FileType cpp imap <buffer> <C-h> <esc>:w<CR>:exec '!g++' shellescape(@%, 1) '-o out; ./out'<CR>

let g:transparent_enabled = v:true

" White colors for LSP messages in code
" set termguicolors
hi DiagnosticError guifg=White
hi DiagnosticWarn  guifg=White
hi DiagnosticInfo  guifg=White
hi DiagnosticHint  guifg=White

" autocomplete
imap <F1> <C-x><C-f>

let g:coc_global_extensions = ['coc-css', 'coc-html', 'coc-json', 'coc-prettier']

set updatetime=300

" Use K to show documentation in preview window
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction


" Formatting selected code
xmap <leader>f ggVG<Plug>(coc-format-selected):w<cr>
nmap <leader>f ggVG<Plug>(coc-format-selected):w<cr>

" Show all diagnostics
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>


" Plugins
call plug#begin()

"HTML/CSS
Plug 'mattn/emmet-vim'

" pairs
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'

" color schemas
Plug 'morhetz/gruvbox'  " colorscheme gruvbox #ab7967
Plug 'mhartington/oceanic-next'  " colorscheme OceanicNext
Plug 'flazz/vim-colorschemes'
Plug 'joshdick/onedark.vim'
Plug 'rebelot/kanagawa.nvim'
Plug 'projekt0n/github-nvim-theme'

" Nerd-Tree
 Plug 'preservim/nerdtree'

" FZF
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-lua/plenary.nvim'

" autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'npm ci'}

" multicursor
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

" github
Plug 'lewis6991/gitsigns.nvim'

Plug 'mileszs/ack.vim'
Plug 'wincent/ferret'

call plug#end()


"colorscheme option
set t_Co=256
execute "colorscheme " . main_colorscheme

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

