" vundle 环境设置
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
filetype plugin indent on

" 定义快捷键的前缀, 即<Leader>
let mapleader=";"

" 开启鼠标复制粘贴
if has('mouse')
	set mouse-=a
endif

" 设置状态栏主题风格
let g:Powerline_colorscheme='solarized256'

" 基于缩进或语法进行代码折叠
set foldmethod=syntax

" 启动 vim 时关闭折叠代码
set nofoldenable

" 打开拼写检查
set spelllang=en_us,cjk
set spell

" 打开语法高亮
syntax on

" 使用配色方案
colorscheme solarized 
"colorscheme jellybeans 
" 使背景透明
hi Normal guibg=NONE ctermbg=NONE
" 打开文件类型检测功能
filetype on

" 不同文件类型采用不同缩进
filetype indent on
 
" 允许使用插件
filetype plugin on
filetype plugin indent on

" 关闭vi模式
set nocp
 
" 与mac共享剪贴板
set clipboard+=unnamed

" 取消VI兼容
set nocompatible
 
" 显示行号
set nu

" 历史命令保存行数 
set history=1000
 
" 当文件被外部改变时自动读取
set autoread 

" 取消自动备份及产生swp文件
set nobackup
set nowb
set noswapfile
 
" 允许使用鼠标点击定位
set mouse=a
" 允许区域选择
set selection=exclusive
 
" 高亮光标所在行
set cursorline
" 取消光标闪烁
set novisualbell
 
" 总是显示状态行
set laststatus=2
" 状态栏显示当前执行的命令
set showcmd
 
" 标尺功能, 显示当前光标所在行列号
set ruler
" 设置命令行高度为2
set cmdheight=2
 
" 粘贴时保持格式
" set paste
" 高亮显示匹配的括号
set showmatch
 
" 在搜索的时候忽略大小写
set ignorecase
 
" 高亮被搜索的句子
set hlsearch
 
" 在搜索时, 输入的词句的逐字符高亮
set incsearch
" 大小写智能转换
set smartcase

" 继承前一行的缩进方式
set autoindent
 
" 为c程序提供自动缩进
set smartindent
" 使用c样式的缩进
set cindent
 
" 制表符为2
set tabstop=2
" 统一缩进为2
set softtabstop=2
set shiftwidth=2
 
" 允许使用退格键
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
" 换行
set wrap
 
" 在被分割的窗口间显示空白
set fillchars=vert:\ ,stl:\ ,stlnc:\
 
" 光标移动到buffer的顶部和底部时保持3行距离
set scrolloff=3
" 设定默认解码
set fenc=utf-8
set fencs=utf-8,usc-bom,euc-jp,gb18030,gbk,gb2312,cp936
 
" 设定编码
set enc=utf-8
set fileencodings=ucs-bom,utf-8,chinese
set langmenu=zh_CN.UTF-8
language message zh_CN.UTF-8
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
 
" 自动补全
filetype plugin indent on
set completeopt=longest,menu

" 自动补全命令时候使用菜单式匹配列表
set wildmenu
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType java set omnifunc=javacomplete#Complet

" NERDTree
let NERDTreeShowHidden=1
autocmd vimenter * NERDTree
wincmd w
autocmd vimenter * wincmd w

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <F3> :NERDTreeMirror<CR>
map <F3> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" ack.vim
" 使用 leader + a search
cnoreabbrev Ack Ack!
nnoremap <Leader>a :Ack!<Space>

if executable('ag')
  let g:ackprg = 'ag --vimgrep --nogroup --column'
endif

" 高亮搜索关键词
let g:ackhighlight = 1

" nerdcommenter
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1

" Rust
let g:rustfmt_autosave = 1

" MarkdownPreview
" set to 1, nvim will open the preview window after entering the markdown buffer
" default: 0
let g:mkdp_auto_start = 0

" set to 1, the nvim will auto close current preview window when change
" from markdown buffer to another buffer
" default: 1
let g:mkdp_auto_close = 1

" set to 1, the vim will refresh markdown when save the buffer or
" leave from insert mode, default 0 is auto refresh markdown as you edit or
" move the cursor
" default: 0
let g:mkdp_refresh_slow = 0

" set to 1, the MarkdownPreview command can be use for all files,
" by default it can be use in markdown file
" default: 0
let g:mkdp_command_for_global = 0

" set to 1, preview server available to others in your network
" by default, the server listens on localhost (127.0.0.1)
" default: 0
let g:mkdp_open_to_the_world = 0

" use custom IP to open preview page
" useful when you work in remote vim and preview on local browser
" more detail see: https://github.com/iamcco/markdown-preview.nvim/pull/9
" default empty
let g:mkdp_open_ip = ''

" specify browser to open preview page
" default: ''
let g:mkdp_browser = ''

" set to 1, echo preview page url in command line when open preview page
" default is 0
let g:mkdp_echo_preview_url = 0

" a custom vim function name to open preview page
" this function will receive url as param
" default is empty
let g:mkdp_browserfunc = ''

" options for markdown render
" mkit: markdown-it options for render
" katex: katex options for math
" uml: markdown-it-plantuml options
" maid: mermaid options
" disable_sync_scroll: if disable sync scroll, default 0
" sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
"   middle: mean the cursor position alway show at the middle of the preview page
"   top: mean the vim top viewport alway show at the top of the preview page
"   relative: mean the cursor position alway show at the relative positon of the preview page
" hide_yaml_meta: if hide yaml metadata, default is 1
" sequence_diagrams: js-sequence-diagrams options
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'flowchart_diagrams': {}
    \ }

" use a custom markdown style must be absolute path
" like '/Users/username/markdown.css' or expand('~/markdown.css')
let g:mkdp_markdown_css = ''

" use a custom highlight style must absolute path
" like '/Users/username/highlight.css' or expand('~/highlight.css')
let g:mkdp_highlight_css = ''

" use a custom port to start server or random for empty
let g:mkdp_port = ''

let g:mkdp_path_to_chrome='/Applications/Google\ Chrome.app'
" preview page title
" ${name} will be replace with the file name
let g:mkdp_page_title = '「${name}」'

" example
nmap <C-s> <Plug>MarkdownPreview
nmap <M-s> <Plug>MarkdownPreviewStop
nmap <C-p> <Plug>MarkdownPreviewToggle
" 调整air-line的主题
let g:airline_theme="bubblegum"


" gutentags搜索工程目录的标志，碰到这些文件/目录名就停止向上一级目录递归 "
let g:gutentags_project_root = ['.root', '.svn', '.git', '.project']

" 所生成的数据文件的名称 "
let g:gutentags_ctags_tagfile = '.tags'

" 将自动生成的 tags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录 "
let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags
" 检测 ~/.cache/tags 不存在就新建 "
if !isdirectory(s:vim_tags)
   silent! call mkdir(s:vim_tags, 'p')
endif

" 配置 ctags 的参数 "
set tags='~/.cache/tags'
set autochdir
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+pxI']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']
