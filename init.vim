set nocompatible
set termguicolors

call plug#begin('~/.config/nvim/plugged')
function! DoRemote(arg)
  UpdateRemotePlugins
endfunction
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'rhysd/committia.vim'
Plug 'davidhalter/jedi-vim'
Plug 'wting/rust.vim'
Plug 'mxw/vim-jsx'

Plug 'plasticboy/vim-markdown'
Plug 'othree/html5.vim'
Plug 'lepture/vim-jinja'
Plug 'cespare/vim-toml'

Plug 'jdkanani/vim-material-theme'
Plug 'simnalamburt/vim-mundo'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'w0rp/ale'
Plug 'spoqa/nirum.vim'
Plug 'junegunn/vim-slash'

" Demian version vim plugin

" snippiet-related plugin
Plug 'SirVer/ultisnips'
Plug 'epilande/vim-react-snippets'

" sytax maybe
Plug 'pangloss/vim-javascript'
Plug 'elzr/vim-json'
Plug 'heavenshell/vim-jsdoc'
Plug 'othree/javascript-libraries-syntax.vim'
Plug '1995eaton/vim-better-javascript-completion'
Plug 'othree/jspc.vim'
Plug 'moll/vim-node'
Plug 'Valloric/YouCompleteMe'
Plug 'hail2u/vim-css3-syntax'
Plug 'ekalinin/Dockerfile.vim'
Plug 'kchmck/vim-coffee-script'
Plug 'mtscout6/vim-cjsx'

" surround method vim plugin
Plug 'tpope/vim-surround'

" make it to easier to search on directoy
Plug 'scrooloose/nerdtree'

" related github plugin
Plug 'tpope/vim-fugitive'

" relating to indent line
Plug 'Yggdroot/indentLine'

"html auto closing
Plug 'alvan/vim-closetag'
Plug 'jiangmiao/auto-pairs'

call plug#end()

" related to tmux clipboard problem
set clipboard=unnamed
"vim-closetag setting
let g:closetag_filenames = '*.html,*.js,*.jsx'
" nerdtree open shortcut
map <C-n> :NERDTreeToggle<CR>

" disable arrow key
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

filetype plugin indent on
syntax on

" Color configuration
set bg=dark
color material-theme

set number
set tabstop=2 shiftwidth=2 softtabstop=2 modeline
set fileformat=unix backspace=2
set autoindent smartindent expandtab
set encoding=utf-8 fileencodings=ucs-bom,utf-8,cp949,korea,iso-2022-kr

au FileType ruby        setl ts=2 sw=2 sts=2
au FileType yaml        setl ts=2 sw=2 sts=2
au FileType html        setl ts=2 sw=2 sts=2
au FileType haml        setl ts=2 sw=2 sts=2
au FileType php         setl ts=2 sw=2 sts=2
au FileType sql         setl ts=2 sw=2 sts=2
au FileType javascript  setl ts=2 sw=2 sts=2
au FileType python      setl ts=4 sw=4 sts=4
au FileType haskell     setl ts=8 sw=4 sts=4
au FileType make        setl noet

set laststatus=2

command E Explore

set noeb vb t_vb=

set directory=/tmp
set colorcolumn=80

noremap <silent> nh :noh<CR>
noremap <silent> tt :F<CR>
nnoremap <F5> :MundoToggle<CR>

let g:deoplete#enable_at_startup = 1

inoremap <expr> <Tab> ((pumvisible())?("\<C-n>"):("<Tab>"))

"Keep 80 columns.
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/
autocmd WinEnter * match OverLength /\%81v.\+/

highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
highlight ExtraWhitespace2 ctermbg=darkgreen guibg=darkgreen
match ExtraWhitespace /\s\+\%#\@<!$/
match ExtraWhitespace2 /\s\+\%#/
autocmd WinEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd WinEnter * match ExtraWhitespace2 /\s\+\%#/
autocmd InsertLeave * match ExtraWhitespace /\s\+\%#\@<!$/

set nofoldenable

" nirum configuraiton
au FileType nirum       setl ts=4 sw=4 sts=4


" neovim configuration
"let g:python_host_prog = '/Users/ed/src/venv/neovim2/bin/python'
"let g:python3_host_prog = '/Users/ed/src/venv/neovim3/bin/python'


set bg=dark
color material-theme

let g:airline_theme='bubblegum'
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_powerline_fonts=1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.crypt = '🔒'

let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 0
let g:jsx_ext_required = 0
let g:javascript_plugin_flow = 1

let g:ycm_key_list_select_completion=["<Tab>"]
let g:ycm_key_list_previous_completion=["<S-Tab>"]
let g:UltiSnipsExpandTrigger="<nop>"
let g:ulti_expand_or_jump_res = 0
function! <SID>ExpandSnippetOrReturn()
  let snippet = UltiSnips#ExpandSnippetOrJump()
  if g:ulti_expand_or_jump_res > 0
    return snippet
  else
    return "\<CR>"
  endif
endfunction
inoremap <expr> <CR> pumvisible() ? "<C-R>=<SID>ExpandSnippetOrReturn()<CR>" : "\<CR>"

autocmd BufNewFile,BufRead *.less set filetype=less
autocmd FileType less set omnifunc=csscomplete#CompleteCSS
autocmd FileType scss set omnifunc=csscomplete#CompleteCSS
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

