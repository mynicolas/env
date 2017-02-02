" vundle插件
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
call vundle#end()
filetype plugin indent on

" 插件列表
Plugin 'tmhedberg/SimpylFold'        " 代码折叠
Plugin 'scrooloose/syntastic'        " 语法检测
Plugin 'jiangmiao/auto-pairs'        " 括号匹配
Plugin 'scrooloose/nerdcommenter'    " 注释
Plugin 'scrooloose/nerdtree'         " 目录树
Plugin 'Xuyuanp/nerdtree-git-plugin' " nerdtree的git插件
Plugin 'airblade/vim-gitgutter'      " git操作
Plugin 'nvie/vim-flake8'             " pep8
Plugin 'jistr/vim-nerdtree-tabs'     " NERDtree的tab插件

" 分屏
set splitbelow
set splitright
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" 中文支持
set encoding=utf-8
set langmenu=zh_CN.UTF-8
language message zh_CN.UTF-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set ffs=unix,dos,mac
set ff=unix

" 缩进、对齐
set tabstop=4   " 设置tab键的宽度
set sts=4
set expandtab
set softtabstop=4
set shiftwidth=4
set autoindent
set cindent
set cinoptions={0,1s,t0,n-2,p2s,(03s,=.5s,>1s,=1s,:1s
set smartindent " 智能自动缩进
set autoindent  " 自动对齐
set textwidth=79

set vb t_vb=    " 关闭提示音
set number      " 显示行号
filetype on     " 文件类型侦测
syntax on       " 语法高亮
set ai!         " 设置自动缩进
" set showmatch   " 显示括号配对
set ruler       " 右下角显示光标位置的状态行
set incsearch   " 开启实时搜索功能
set hlsearch    " 开启高亮显示结果
set mouse=a     " 鼠标模式开启
set cursorline  " 高亮显示当前行
set list        " 显示tab和space
set listchars=tab:>-,trail:-  " 将tab和space显示为-
set cmdheight=1               " 命令行的高度，默认为1，这里可以重设
set autochdir                 " 自动切换当前目录
set laststatus=2              " 状态栏
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %y%r%m%*%=\ %{strftime(\"%y/%m/%d\ -\ %H:%M\")}   " 状态栏显示格式
set nobackup    " 取消vim备份

" 代码折叠
set foldmethod=indent         " 选择代码折叠类型
set foldlevel=99              " 禁止自动折叠
nnoremap <space> za
let g:SimpylFold_docstring_preview=1

" python自动补全
filetype plugin on
set omnifunc=pythoncomplete
let g:pydiction_location='~/.vim/tools/pydiction/complete-dict'
let g:pydictionh_menu_height=20

" 通用快捷键
map <F5> :! /Users/nicolas/anaconda/bin/python %

" 插件配置
let g:SuperTabDefaultCompletionType="context"

let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeIgnore=['\.pyc$', '\~$']

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \}
