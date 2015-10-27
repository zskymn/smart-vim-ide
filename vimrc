" 指定shell
set shell=/bin/bash
" 导入vim默认配置
source $VIMRUNTIME/vimrc_example.vim

" Vundle插件管理"{{{
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" 插件管理
Plugin 'https://github.com/VundleVim/Vundle.vim'
" 主题
Plugin 'https://github.com/flazz/vim-colorschemes'
" 状态栏
Plugin 'https://github.com/bling/vim-airline'
" 恢复和撤销操作
Plugin 'https://github.com/mbbill/undotree.git'
" 文件目录查看
Plugin 'https://github.com/scrooloose/nerdtree.git'
" 代码注释设置
Plugin 'https://github.com/tpope/vim-commentary.git'
" 代码模板片段
Plugin 'https://github.com/SirVer/ultisnips.git'
Plugin 'https://github.com/honza/vim-snippets.git'
" 代码智能补全
Plugin 'https://github.com/Valloric/YouCompleteMe.git'
" js代码分析（有助于js代码补全）
Plugin 'https://github.com/marijnh/tern_for_vim.git'
" git diff 显示
Plugin 'https://github.com/airblade/vim-gitgutter.git'
" 代码块快速选择
Plugin 'https://github.com/gcmt/wildfire.vim.git'
" 光标快速跳转到指定位置
Plugin 'https://github.com/easymotion/vim-easymotion.git'
" markdown预览
Plugin 'https://github.com/shime/vim-livedown.git'
" 静态语法检查
Plugin 'https://github.com/scrooloose/syntastic.git'
" 智能文本替换和命名（驼峰、蛇形）转换
Plugin 'https://github.com/tpope/vim-abolish.git'
" 代码格式化（美化）-- a fork to fix bug
Plugin 'https://github.com/joshuarubin/vim-autoformat.git'
" less高亮
Plugin 'https://github.com/groenewege/vim-less.git'
" 显示代码结构
Plugin 'https://github.com/majutsushi/tagbar.git'
" 文件查找、打开插件
Plugin 'https://github.com/kien/ctrlp.vim.git'
" 强大的内容查找插件（基于ack）
Plugin 'https://github.com/dyng/ctrlsf.vim.git'
call vundle#end()
filetype plugin indent on
"}}}

" 一般配置"{{{

" 关闭兼容模式
set nocompatible
" 禁止折行
set nowrap
" 关闭文件备份
set nobackup
" 禁止创建备份文件
set noswapfile
" 在状态栏显示执行的命令
set showcmd
" 文件改变时重新加载
set autoread
" 利用标记折叠代码
set foldmethod=marker
" 设置leader键
let g:mapleader=","
" 开启鼠标支持
set mouse=a
" 总是显示状态栏
set laststatus=2
" 显示光标当前位置
set ruler
" 开启行号显示
set number
" 高亮显示当前行
set cursorline
" 高亮显示当前列
set cursorcolumn
" 高亮显示搜索结果
set hlsearch
" 开启语法高亮功能
syntax enable
" 允许用指定语法高亮配色方案替换默认方案
syntax on
" 设置主题
colorscheme molokai
"}}}

" 快捷键设置"{{{

"定义快捷键到行首和行尾
nnoremap lb 0
nnoremap le $
" 设置快捷键将选中文本块复制至系统剪贴板
vnoremap <Leader>y "+y
" 设置快捷键将系统剪贴板内容粘贴至 vim
nnoremap <Leader>p "+p
" 定义快捷键关闭当前分割窗口
nnoremap <Leader>q :q<CR>
" 定义快捷键保存当前窗口内容
nnoremap <Leader>w :w<CR>
" 定义快捷键保存当前窗口内容并退出
nnoremap <Leader>W :wq<CR>
" 定义快捷键保存所有窗口内容并退出 vim
nnoremap <Leader>WQ :wa<CR>:qa<CR>
" 不做任何保存，直接退出 vim
nnoremap <Leader>Q :qa!<CR>
" 依次遍历子窗口
nnoremap nw <C-W><C-W>
" 跳转至左方的窗口
nnoremap <Leader>hw <C-W>h
" 跳转至右方的窗口
nnoremap <Leader>lw <C-W>l
" 跳转至上方的子窗口
nnoremap <Leader>kw <C-W>k
" 跳转至下方的子窗口
nnoremap <Leader>jw <C-W>j
" 定义快捷键在结对符之间跳转，助记pair
nnoremap <Leader>pa %
" 开关UnicodeTranslateError
noremap <silent> <F12> :NERDTreeToggle %<CR>
" 格式化（美化）代码
noremap <silent><Leader>ff :Autoformat<CR>
" 格式化less
autocmd FileType less noremap <buffer> <leader>ff ggvG=
" 开关Undotree
nnoremap <F5> :UndotreeToggle<cr>
" 跳转到变量声明处
nnoremap <leader>je :YcmCompleter GoToDeclaration<CR>
" 跳转到变量定义处
nnoremap <leader>jd :YcmCompleter GoToDefinition<CR>
autocmd FileType javascript nnoremap <leader>jd :TernDef<CR>
" 显示变量引用
autocmd FileType javascript nnoremap <leader>jr :TernRefs<CR>
" Tagbar窗口开光
noremap <F8> :TagbarToggle<CR>
" CtrlSF搜索
nnoremap <leader>cf :CtrlSF<CR>
" CtrlSF窗口开关
nnoremap <leader>tf :CtrlSFToggle<CR>
"}}}

" 缩进设置"{{{
set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab
set autoindent
autocmd BufNewFile,BufReadPost *.py setlocal tabstop=4 shiftwidth=4 softtabstop=4
"}}}

" 状态栏插件airline配置"{{{
set laststatus=2
let g:airline_theme='molokai'
let g:airline_powerline_fonts=1
"}}}

"撤销插件undo配置"{{{
set undofile
set undodir=$HOME/.undo
"}}}

" 文件浏览插件NERDTree配置"{{{
let g:NERDTreeIgnore=['\.pyc$']
"}}}

" 模板插件UltiSnips配置"{{{
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsListSnippets="<c-tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsSnippetDirectories=['UltiSnips', 'skUltiSnips']
"}}}

" 智能补全插件YouCompleteMe配置"{{{
let g:ycm_min_num_of_chars_for_completion = 1
set completeopt-=preview
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_cache_omnifunc = 0
let g:ycm_key_list_select_completion = ['<c-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']

function! MyTabFunction ()
  let line = getline('.')
  let substr = strpart(line, -1, col('.')+1)
  let substr = matchstr(substr, "[^ \t]*$")
  if strlen(substr) == 0
    return "\<tab>"
  endif
  return pumvisible() ? "\<c-n>" : "\<c-x>\<c-o>"
endfunction
inoremap <tab> <c-r>=MyTabFunction()<cr>
"}}}

" 静态语法检查插件syntastic配置"{{{
let g:syntastic_check_on_open               = 1
let g:syntastic_python_checkers             = ['pylint', 'flake8', 'pep8', 'pyflakes']
let g:syntastic_python_pylint_args          = "-disable-msg=C0103 --max-line-length=79 --ignore=E712"
let g:syntastic_python_pep8_args            = "--max-line-length=79 --ignore=E712"
let g:syntastic_python_flake8_args          = "--max-line-length=79 --max-complexity=16 --ignore=E712"
let g:syntastic_always_populate_loc_list    = 1
let g:syntastic_javascript_checkers         = ['jshint']
let g:loaded_syntastic_html_tidy_checker    = 0
"}}}

" 内容查找插件CtrlSF配置"{{{
let g:ctrlsf_default_root = 'project'
let g:ctrlsf_position = 'bottom'
"}}}
