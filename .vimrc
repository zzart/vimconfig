"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Encoding
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set enc=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,latin1
set printencoding=utf-8
scriptencoding utf-8
set pdev=HP_LaserJet_1020
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Defautls
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call pathogen#infect('plugins')
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
let mapleader=","  "we are changing <leader>
set hidden  "this lets you have unsaved buffers !!
"set autowrite           "  saves if switching buffers
colorscheme delek " molokai mustang ir_black
set ttyfast
"set relativenumber
"set cursorline
"highlight CursorLine guibg=lightblue ctermbg=black
highlight CursorLine guibg=lightblue ctermbg=red
set ruler
set wildmenu
set wildmode=list:longest
set showcmd
set showmatch           "  show matching brace
set showmode
set ignorecase    " ignore case when searching
set smartcase " if u search with upper case so be it otherwise use lower at all times
" use regular regix instead escaping every single special character
nnoremap / /\v
vnoremap / /\v
set incsearch
set hlsearch
set gdefault " this means GLOBAL -just type %s/search/replace/
set scrolloff=7
nnoremap <leader>m :noh<cr>
"nnoremap <tab> %
"vnoremap <tab> %
nnoremap j gj
nnoremap k gk
set cryptmethod=blowfish " set stronger encription
set printoptions=paper:A4,syntax:y,wrap:y
" new in 7.3 .............................................
" swp files
set directory=~/.vim/tmp
" undo files
set undodir=~/.vim/tmp
set undofile
set undolevels=1000 "maximum number of changes that can be undone
set undoreload=10000 "maximum number lines to save for undo on a buffer reload
set clipboard+=unnamed
set nobackup
"set noswapfile "get rid of annoying swp files
" crtlp
let g:ctrlp_custom_ignore = '\.swp$\|\.git$\|\.hg$\|\.svn$\|\.pyc$|unused$' "this is for ctrlp plugin
set wildignore+=*/node/*,*/node_modules/*,*/libs/*,*.so,*.swp,*.zip,*.png,*.swf,*.pdf,*.eot,*.ttf,*.woff,*.bmp,*.svg,*.jpg,*.gif,*/userfiles/*,*/static/*,*.pyc
let g:ctrlp_by_filename = 1
let g:ctrlp_working_path_mode = 'r'
"let g:ctrlp_cmd = 'CtrlP /home/mars/Dropbox/www/om'
"let g:ctrlp_cmd = 'CtrlP /home/mars/Dropbox/www/omf'
" let g:Powerline_symbols = 'fancy'  "this is for fancy bottom line status bar
" no splash screen
set shortmess+=I
nnoremap <leader>a :Ack
"status-line
set laststatus=2
let g:airline_theme="jellybeans"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Source files
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"source $VIMRUNTIME/mswin.vim
source ~/.vim/plugins/tasklist/tasklist.vim
"noremap <c-v> <esc>:set paste<cr>"+gp<esc>:set nopaste<enter>i<right /></enter></esc></cr></esc></c-v>
runtime macros/matchit.vim
set viewdir=$HOME/.vim/sessions "for sessions
"autocmd BufRead *.as set filetype=actionscript
source ~/.vim/abrivations.vim
"source ~/.vim/plugins/minibufexplorer/minibufexpl.vim
"source ~/.vim/plugins/vimroom/vimroom.vim
source ~/.vim/plugins/matchit/matchit.vim
"let Tlist_Ctags_Cmd = "/usr/bin/ctags"
"let g:ctags_statusline=1
map <f12> :!ctags --languages=python -R .<cr>
"set where the ctag file is
set tags=tags
"----------------------
"let g:tagbar_ctags_bin="/home/mars/Dropbox/system/vim/plugins/ctags"
let g:vimwiki_list = [
\ {'path': '~/dd/wiki/main', 'ext': '.md', 'syntax': 'markdown', 'index': 'index', },
\ {'path': '~/dev/www/mp/wiki', 'ext': '.md', 'syntax': 'markdown', 'index': 'index', 'custom_wiki2html': '/home/mars/.vim/plugins/vimwiki/misaka_md2html.py', 'css_name': 'style.css'},
\ {'path': '~/dev/www/om/doc/wiki', 'ext': '.md', 'syntax': 'markdown', 'index': 'index', },
\ {'path': '~/dd/wiki/cash', 'ext': '.md', 'syntax': 'markdown', 'index': 'index', },
\ {'path': '~/dev/www/mps/wiki/docs/', 'ext': '.md', 'syntax': 'markdown', 'index': 'index', },
\ {'path': '~/dd/wiki/music', 'ext': '.md', 'syntax': 'markdown', 'index': 'index', },
\ {'path': '~/dev/www/om/wiki', 'ext': '.md', 'syntax': 'markdown', 'index': 'index', },
\ ]
let g:vimwiki_global_ext = 0
"set tags+=$HOME/zielonymagazyn/tags "tags
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:calendar_google_calendar = 1
let g:calendar_google_task = 1
let g:vimwiki_use_calendar = 1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Editing
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:rainbow_active = 1
" comments for right filetype
autocmd FileType javascript nnoremap <buffer> <leader>c I//<esc>
autocmd FileType python     nnoremap <buffer> <leader>c I#<esc>
"start and end of the line
nnoremap <S-h> 0
nnoremap <S-l> $
"inoremap <S-h> 0
"inoremap <S-l> $
" disable arrow keys
"map <up> <nop>
"map <down> <nop>
"for going though help system
nmap <silent> <left> :cprev<cr>
nmap <silent> <left><left> :cpfile<cr><c-g>
nmap <silent> <right> :cnext<cr>
nmap <silent> <right><right> :cnfile<cr><c-g>
"this function displays help in full window a suppose to split ...
augroup HelpInFullWindow
    autocmd!
    autocmd BufEnter *.txt call HelpInFullWindowCall()
augroup END
function HelpInFullWindowCall ()
    if &buftype == 'help'
        execute "normal \<c-w>o"
    endif
endfunction
"map <right> <nop>
"imap <up> <nop>
"imap <down> <nop>
"imap <left> <nop>
"imap <right> <nop>
"imap <ESC> <nop>
"map <ESC> <nop>
map <C-B> <C-V>
imap <C-B> <C-V>
" commenting out lines
nnoremap <Leader><Space> <Esc>:CtrlPBuffer<CR>
nnoremap <Leader>. :CtrlPTag<cr>
imap <Leader>pp <C-r>+
map <Leader>/ :s/^/#/<CR>
map ]/ :s/\/\//<CR>
" needs to be below arrows
noremap ;j<Space>           <Esc>:w<CR><Esc>
inoremap ;j<Space>           <Esc>:w<CR><Esc>
" Maps for jj to act as Esc
ino kj <esc>
ino kj <esc>
cno jj <c-c>
cno jj <c-c>
set spelllang=pl  " ustawiamy polski
set cpoptions+=$  " ustawiamy koniec słowa za pomocą znaku $
set virtualedit=all  " możliwość przemieszczania kursora po pustych polach
:map! <C-F> <Esc>gUiw`]a
nmap <silent> cp "_cw<C-R>"<Esc>
" this replaces yanked word
"""""""""""""""""""""""""from msvim
vnoremap <C-C> "+y
nmap <leader>tt <Plug>VimwikiToggleListItem " for doto lists
let g:vimwiki_hl_cb_checked=1
" CTRL-A is Select all
noremap <leader>a gggH<C-O>G
inoremap <leader>a <C-O>gg<C-O>gH<C-O>G
cnoremap <leader>a <C-C>gggH<C-O>G
onoremap <leader>a <C-C>gggH<C-O>G
snoremap <leader>a <C-C>gggH<C-O>G
xnoremap <leader>a <C-C>ggVG
" CTRL-Tab is Next window
"noremap <C-Tab> <esc>:bnext<cr>
"inoremap <C-Tab> <esc>:bnext<cr>
"cnoremap <C-Tab> <esc>:bnext<cr>
"onoremap <C-Tab> <esc>:bnext<cr>
"""""""""""""""""""""""""from msvim
"django
"imap wq {%%}<esc><left>i
"imap qw {{}}<esc><left>i
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Indent
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set nowrap " don't wrap lines
set tabstop=4 " tab is 4 spaces
set expandtab
set smartindent    " smart indent of code - indent after opening '{',
set autoindent
set copyindent    " copy the previous indentation on autoindenting
set shiftwidth=4  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set smarttab      " insert tabs on the start of a line according to  shiftwidth, not tabstop
" to jest do vimWiki
set nocompatible
filetype plugin indent on
set foldmethod=indent
nnoremap z<space> zR
nnoremap <space> za
vnoremap <space> zf
set foldnestmax=2
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Python
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on
"this replaces spaces with dots during writing
"autocmd FileType python set list
"autocmd FileType python set listchars=tab:>.,trail:.,extends:#,nbsp:.
"map <F3> :!python %<cr>  "interpretor
"set keywordprg=!python "interpretor
"map <F2> :ConqueTerm bpython manage.py shell<cr> "documentation (cursor needs to be on the subject of interest)
let Tlist_Use_Right_Window = 1
"set omnifunc=pysmell#Complete
"autocmd FileType python set omnifunc=pysmell#Complete
autocmd FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview
autocmd BufRead *.py inoremap # X<c-h>#<space>
autocmd BufWritePre * :%s/\s\+$//e "remove all trailing whitespaces on save
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Coffescript
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"noremap <Leader>zz :!coffee %<cr>
"autocmd BufWritePost,FileWritePost *.coffee silent CoffeeMake! -o /home/mars/www/omf/app/js/bon/ " compile coffee files on every save
"autocmd BufWritePost,FileWritePost *.coffee silent execute 'CoffeeMake! -o '.expand('%:p:h:s?cs?js?')
"autocmd BufWritePost,FileWritePost *.eco silent !eco %
"autocmd BufWritePost,FileWritePost *.coffee silent execute 'CoffeeMake! -o '.expand('%:p:h')
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NAVIGATION keys
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTREE
let g:NERDTreeBookmarksFile = expand($HOME.'/dd/system/vim/.NERDTreeBookmarks')
let g:NERDTreeShowBookmarks = 1
"let g:NERDTreeChDirMode = 1
"let g:NERDTreeWinPos ="right"
"let g:NERDTreeWinSize = 45
"let g:NERDTreeChristmasTree = 1
"let g:NERDTreeCaseSensitiveSort = 1
"let g:NERDTreeQuitOnOpen = 1
"let g:NERDTreeMouseMode=2
" NERDTree doesn't show C extensions files along with others !!!!!!!!!!!!!!!!1
let g:NERDTreeIgnore = [
\ '\.pyc$', '\.pyo$', '\.py\$class$', '\.obj$',
\ '\.o$', '\.so$', '\.egg$', '^\.git$', '^\.svn$',
\ '\.c$', '\.bak$', '\.back$', '^\.swp$',
\ ]


nnoremap <silent> <F8> :TlistToggle<CR>
nmap <F5> :TagbarToggle<CR>
nmap <silent> <F4> :NERDTreeToggle<CR>
autocmd BufEnter * lcd %:p:h
"nmap <silent> <F6> <Leader>mbt<CR>
nmap <silent> <F6> :TagbarToggle<CR>
"borwser
noremap <silent> <F11> :cal VimCommanderToggle()<CR>
nmap <F7> :set number!<CR>
nmap <F8> :set paste!<CR>
:autocmd BufNewFile * silent! 0r $HOME/.vim/templates/%:e.tpl
"let g:flake8_ignore="E501"
"for inserting blank lines
"nmap <A-Enter> O<Esc>
nmap <CR> o<Esc>k
"for jumping to <+ marks
nnoremap <c-j> /<+.\{-1,}+><cr>c/+>/e<cr>
inoremap <c-j> <ESC>/<+.\{-1,}+><cr>c/+>/e<cr>
nnoremap <leader>w <C-w>v<C-w>l
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h
"for tabs
map <A-1> <Esc>:b1<cr>
map <A-2> <Esc>:b2<cr>
map <A-3> <Esc>:b3<cr>
map <A-4> <Esc>:b4<cr>
map <A-5> <Esc>:b5<cr>
map <A-6> <Esc>:b6<cr>
map <A-7> <Esc>:b7<cr>
map <A-8> <Esc>:b8<cr>
map <A-9> <Esc>:b9<cr>
map <A-0> <Esc>:b#<cr>
map <A--> <Esc>:bprevious<cr>
map <A-=> <Esc>:bnext<cr>
function! Tab_Or_Complete()
  if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
    return "\<C-N>"
  else
    return "\<Tab>"
  endif
endfunction
:inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set syntax for different filetypes
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
au BufRead,BufNewFile *.less set filetype=less
autocmd FileType less set syntax=css
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" other unused
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" modify selected text using combining diacritics
command! -range -nargs=0 Overline        call s:CombineSelection(<line1>, <line2>, '0305')
command! -range -nargs=0 Underline       call s:CombineSelection(<line1>, <line2>, '0332')
command! -range -nargs=0 DoubleUnderline call s:CombineSelection(<line1>, <line2>, '0333')
command! -range -nargs=0 Strikethrough   call s:CombineSelection(<line1>, <line2>, '0336')

function! s:CombineSelection(line1, line2, cp)
  execute 'let char = "\u'.a:cp.'"'
  execute a:line1.','.a:line2.'s/\%V[^[:cntrl:]]/&'.char.'/ge'
endfunction
let g:pydiction_location = '/home/mars/.vim/plugins/pydiction/complete-dict'
" Remap code completion to Ctrl+Space {{{2
"inoremap <S-N> <C-x><C-o>
"super tab completion
"let g:SuperTabContextDefaultCompletionType = "<c-x><c-o>"
"how to do omni ??
        "nmap <silent> <F12> <Plug>ToggleProject
"let potwiki_home = "$HOME/Documents/wiki"
"nmap \wh <Plug>PotwikiHome
"let potwiki_other = 'w_*'
" TA LINIA WYLANCZA WIKI PLUGIN ... NIE WIEM CZEMU ALE PLUGIN UNIEMOZLIWIA HIGHLIGHTING . JESLI WIKI MA CHODZIC TO WSTAW KOMANTARZ NA MIEJSCE
"let loaded_potwiki = 1
" scieżka referencji do syntaxu processing
"let pref="/home/mars/Documents/programing/processing-1.1/reference/"
"folds
"map zR za
"map zM zx
"map <F2> <Leader>pw
":let $DJANGO_SETTINGS_MODULE='zielonymagazyn.settings'
"autocmd FileType python set complete+=k~/.vim/syntax/python.vim isk+=.,(
"autocmd FileType python set omnifunc=pythoncomplete#Complete
"let g:pydiction_location = '/home/mars/.vim/pydiction/complete-dict'
"
"this is for auto closing brackets
":imap ( ()<left>
":imap { {}<left>
"
" YoU Might also find this useful
" PHP Generated Code Highlights (HTML & SQL)
"
"autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
"autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType css set omnifunc=csscomplete#CompleteCSS
"autocmd FileType sql set omnifunc=sqlcomplete#Complete
"php interpreter
"map <C-B> :!php -l %
"nerdtree! , line nrs and tags
" php options
"let php_htmlInStrings=1
"let php_sql_query=1
"let php_folding = 1
"--- windowing -----------------
" be able to scroll through opened files easily with ctrl+j/k
"let g:miniBufExplMapWindowNavVim = 1
"---------------------------------------------------
"--<F keys> except python related-------------------
"---------------------------------------------------
"mamy 2 wiki każda musi być wylistowana w oddzielnych nawiasach
"reload vimrc
"cno <F3> :so /home/mars/.vimrc
