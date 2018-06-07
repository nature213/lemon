let Tlist_Ctags_Cmd='/usr/bin/ctags' 
let Tlist_File_Fold_Auto_Close=1
let Tlist_Use_Left_Window=1
set tabstop=4
set hlsearch
set nu
set autoindent
filetype plugin on
set autoindent cindent cinoptions=g0
set expandtab               

set helplang=cn
if has("multi_byte")
    " tell Vim which teminal's Encode
    set fileencodings=utf-8,gb2312,gbk,gb18030
    set termencoding=utf-8
    " set encode to UTF8
    set encoding=utf-8
    " File encode
    set fenc=utf-8
    " set file's type and format
    set fencs=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
    " for Chinese documents
    let &termencoding=&encoding
    "set fileencodings=utf-8,chinese,latin-1,gbk,ucs-bom,cp936,gb2312
    ""set fileencodings=utf-8,gbk
    set fileencodings=utf-8,cp936,big5
endif

if has("autocmd")
autocmd FileType c,cpp setlocal textwidth=80
endif


set nocompatible

set history=1000

set background=dark

syntax on

syntax enable

set shiftwidth=4

set showmatch

set guioptions-=T

set vb t_vb=

set ruler

set nohls

set cindent

set incsearch

set nocp

set backspace=indent,eol,start


":map <F2> :tabprevious<CR>
:map <F3> :tabnext<CR>
:map <C-n> :tabnew . <CR>
:imap <F2> <ESC>:tabprevious<CR>
:imap <F3> <ESC>:tabnext<CR>
:imap <C-n> <ESC>:tabnew . <CR>

set tags+=tags

let g:winManagerWindowLayout='FileExplorer|TagList'

nmap wt :WMToggle<cr>
nmap q :qall<cr>

set cscopequickfix=s-,c-,d-,i-,t-,e-

nmap <C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-_>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-_>d :cs find d <C-R>=expand("<cword>")<CR><CR>

let g:miniBufExplMapCTabSwitchBufs = 1

let g:miniBufExplMapWindowNavVim = 1

let g:miniBufExplMapWindowNavArrows = 1

nnoremap <silent> <F12> :A<CR>

nnoremap <silent> <F3> :Grep<CR>

let g:AutoOpenWinManager = 1
"效果待定
filetype plugin indent on

set completeopt=longest,menu

let g:SuperTabRetainCompletionType=2
let g:SuperTabDefaultCompletionType="<C-X><C-O>"
map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
