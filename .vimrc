call plug#begin('~/.vim/plugged')

Plug 'hickop/vim-hickop-colors'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'justinmk/vim-dirvish'
Plug 'tpope/vim-eunuch'
Plug 'rking/ag.vim'
Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'Valloric/YouCompleteMe', {'do': './install.py --clang-completer --omnisharp-completer'}

Plug 'raichoo/haskell-vim', {'for': 'haskell'}
" Plug 'eagletmt/neco-ghc', {'for': 'haskell'}
Plug 'eagletmt/ghcmod-vim', {'for': 'haskell'}
"
Plug 'idris-hackers/idris-vim', {'for': 'idris'}

Plug 'raichoo/purescript-vim', {'for': 'purescript'}
Plug 'frigoeu/psc-ide-vim', {'for': 'purescript'}

" Plug 'facebook/reason', {'rpt': 'editorSupport/VimReason/'}

" Plug 'ElmCast/elm-vim', {'for': 'elm'}

" Plug 'rust-lang/rust.vim', {'for': 'rust'}

" Plug 'junegunn/seoul256.vim', {'for': 'erlang'}

" Plug 'elixir-lang/vim-elixir', {'for': 'elixir'}

" Plug 'fatih/vim-go', {'for': 'go'}

Plug 'pangloss/vim-javascript', {'for': 'javascript'}
Plug 'mxw/vim-jsx', {'for': 'javascript.jsx'}
" Plug 'facebook/vim-flow', {'for': 'javascript'}

Plug 'leafgarland/typescript-vim'
Plug 'Quramy/tsuquyomi'

" Plug 'OmniSharp/omnisharp-vim', {'for': 'cs'}

call plug#end()

syntax enable
filetype plugin indent on

colo hickop

" set termguicolors
" set nolazyredraw
" set noshowcmd
" set timeoutlen=300
set number
set scrolloff=7
set shortmess=flmnrxIstToO
set history=1000
set nofoldenable foldmethod=manual
set browsedir=buffer
set shellslash
set hidden
set cmdheight=1
set completeopt=longest,menu complete=.,w,b,u
set confirm
" set guioptions=egc
set listchars=tab:\|\ ,trail:.,extends:>,precedes:<,eol:$
set fillchars=
set mouse=a mousehide " ttymouse=xterm2
set noequalalways
set noerrorbells novisualbell
set scrollopt=jump,ver,hor
set sidescroll=10
set splitbelow
set splitright
" set statusline=%<%f\ %h%m%r%y[%{&ff}]%=%-14.(%l,%c%V%)\ %P
set wildmenu wildmode=list:longest,full
set winminheight=0 winminwidth=0
set ignorecase incsearch nohlsearch smartcase
set wildignore+=.svn\*,*.pyc,*.pyo,*.so,*.o,*.dll,*.lib,*.pyd
set wildignore+=*.obj,*.h5,*.ttf,*.pdf,*.xls,*.pcl,*.gz,*.png
set wildignore+=*.gif,*.jpg,*.ico,*.bak,*~
set wildignore+=*.sln,*.csproj,*.resx,*.suo
set wildignore+=*.exe,*.pdb,*.map
set wildignore+=*.doc
set wildignore+=tmp,tags,cscope.out
set autoread
set encoding=utf-8
set fileformats=unix,dos
set nobackup nowritebackup noswapfile
set autoindent
set backspace=indent,eol,start
set formatoptions=tcrqn
set nowrap nojoinspaces
set showmatch
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab smarttab shiftround
set virtualedit=block
set whichwrap+=<,>,h,l

let mapleader = ";"

noremap <silent> <leader>n :bn<CR>
noremap <silent> <leader>b :bp<CR>
noremap <silent> <leader>x :bp\|bd #<CR>

noremap <silent> <leader>m :tabNext<CR>

noremap <silent> <leader>w :w<CR>
noremap <silent> <leader>q :q<CR>
noremap <silent> <leader>qq :qa<CR>

noremap <silent> <leader>p :set invpaste paste?<CR>

noremap x "_x

vnoremap <tab> >gv
vnoremap <s-tab> <gv
vnoremap > >gv
vnoremap < <gv

noremap <leader>sp :split<CR>
noremap <leader>vs :vsplit<CR>


" FZF:
noremap <silent> <leader><Space> :FZF<CR>


" Jsx:
let g:jsx_ext_required = 0
let g:jsx_pragma_required = 0


" Syntastic:
let g:syntastic_mode_map = { 'mode': 'active',
                           \ 'active_filetypes': ['python', 'javascript'],
                           \ 'passive_filetypes': [] }

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_echo_current_error = 1
let g:syntastic_enable_signs = 1
let g:syntastic_enable_balloons = 1
let g:syntastic_enable_highlighting = 1
let g:syntastic_python_checkers = ["pyflakes"]
let g:syntastic_javascript_checkers = ['npm -s run lint']
map <Leader>syc :SyntasticCheck<CR>
map <Leader>syr :SyntasticReset<CR>


" EditorConfig:
let g:EditorConfig_core_mode = 'external_command'


" " Flow:
" " let g:flow#autoclose = 1
" " map <leader>fc :FlowMake<cr>
" " map <leader>ft :FlowToggle<cr>
" " map <leader>fv :FlowType<cr>
" " map <leader>fa :FlowFindRefs<cr>


" Haskell:
autocmd BufWritePost *.hs GhcModCheckAndLintAsync
let &l:statusline = '%{empty(getqflist()) ? "[No Errors]" : "[Errors Found]"}' . (empty(&l:statusline) ? &statusline : &l:statusline)

au FileType haskell nnoremap <buffer> <F1> :GhcModType<CR>
au FileType haskell nnoremap <buffer> <silent> <F2> :GhcModTypeClear<CR>
au FileType haskell nnoremap <buffer> <silent> <F3> :GhcModInfo<CR>
" au FileType haskell nnoremap <buffer> <F1> :HdevtoolsType<CR>
" au FileType haskell nnoremap <buffer> <silent> <F2> :HdevtoolsClear<CR>
" au FileType haskell nnoremap <buffer> <silent> <F3> :HdevtoolsInfo<CR>

autocmd BufEnter *.hs set formatprg=pointfree

let g:ghcmod_hlint_options = ['--ignore=Redundant do']


" PureScript:
au FileType purescript nmap <leader>t :PSCIDEtype<CR>
au FileType purescript nmap <leader>s :PSCIDEapplySuggestion<CR>
au FileType purescript nmap <leader>a :PSCIDEaddTypeAnnotation<CR>
au FileType purescript nmap <leader>i :PSCIDEimportIdentifier<CR>
au FileType purescript nmap <leader>r :PSCIDEload<CR>
au FileType purescript nmap <leader>p :PSCIDEpursuit<CR>
au FileType purescript nmap <leader>c :PSCIDEcaseSplit<CR>
au FileType purescript nmap <leader>qd :PSCIDEremoveImportQualifications<CR>
au FileType purescript nmap <leader>qa :PSCIDEaddImportQualifications<CR>

let g:purescript_indent_if = 2
let g:purescript_indent_case = 2


" " Reason
" if executable('ocamlmerlin')
"   " To set the log file and restart:
"   let s:ocamlmerlin=substitute(system('which ocamlmerlin'),'ocamlmerlin\n$','','') . "../share/merlin/vim/"
"   execute "set rtp+=".s:ocamlmerlin
"   let g:syntastic_ocaml_checkers=['merlin']
" endif
" if executable('refmt')
"   let s:reason=substitute(system('which refmt'),'refmt\n$','','') . "../share/reason/editorSupport/VimReason"
"   execute "set rtp+=".s:reason
"   let g:syntastic_reason_checkers=['merlin']
" endif
