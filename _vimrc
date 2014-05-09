""''All system-wide defaults are set in $VIMRUNTIME/debian.vim (usually just " /usr/share/vim/vimcurrent/debian.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vim/vimrc), since debian.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing debian.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
""runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the
" following enables syntax highlighting by default.
"if has("syntax")
"  syntax on
"endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden             " Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available
""if filereadable("/etc/vim/vimrc.local")
""'  source /etc/vim/vimrc.local
""endif
execute pathogen#infect()

"""MacVim Settings
set guifont=Monaco:h10
set guioptions-=T
set clipboard+=unnamed
"set list                     " 显示Tab符，使用一高亮竖线代替
"set listchars=tab:\|\ ,
":language en_US

syntax on
set t_Co=16
let g:solarized_termcolors=16
set background=dark
colorscheme solarized
"set smartindent
set cindent
set number
set encoding=utf-8
set termencoding=utf-8
set fencs=ucs-bom,utf-8,gbk,big5
set nocompatible
set autoindent
""set cindent
""set gcr=a:block-blinkon2
set mouse=a
set hlsearch
set incsearch
set showcmd
set helplang=cn
set history=400
set autoread
au! BufWritePost .vimrc source %
"
" highlight current line
"au WinLeave * set nocursorline nocursorcolumn
"au WinEnter * set cursorline cursorcolumn
"set cursorline "cursorcolumn
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"turn on man.vim
:source $VIMRUNTIME/ftplugin/man.vim


"settings of ctags"
filetype on
filetype plugin on
filetype indent on
set completeopt=longest,menu
"python config"
set smarttab
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=100
"set vim-indent-guide(plugin)
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 1
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=darkgrey
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=black

let g:pydiction_location = '~/.vim/after/ftplugin/pydiction/complete-dict'
set pastetoggle=<f7>
let mapleader=","

au BufRead,BufNewFile *.txt set filetype=txt

"cscope binding the wxcscope database
"map<F3> :cscope add /Volumes/Temp/cscope_o15_20120228/o15_20122028.csout<CR>
"let Tlist_Ctags_Cmd='c:\windows\system32\ctags.exe'
let Tlist_Use_Right_Window=1
let Tlist_File_Fold_Auto_Close=1
""map <F5> :Explore<CR>
map <F6> :TlistToggle<CR>
"inoremap <F8> <C-x><C-o>
set updatetime=100

"winmanager settings
let g:winManagerWindowLayout='FileExplorer|TagList'
nmap <Leader>wm :WMToggle<CR>

"使用 NERDTree 插件查看工程文件。设置快捷键,速记法:file list
nmap <Leader>fl :NERDTreeToggle<CR>
""设置 NERDTree 子窗口宽度
let NERDTreeWinSize=23


let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1 
"let g:miniBufExplForceSyntaxEnable = 1


"Doxygentoolkit settings
let g:DoxygenToolkit_authorName="Jiaxu Yang"
let g:DoxygenToolkit_briefTag_funcName="yes"


"sketch.vim
"noremap <F7> :call ToggleSketch()<CR>


"括号自动补全
"":inoremap ( ()<ESC>i
"":inoremap ) <c-r>=ClosePair(')')<CR>
"":inoremap { {<CR>}<ESC>O
"":inoremap } <c-r>=ClosePair('}')<CR>
"":inoremap [ []<ESC>i
"":inoremap ] <c-r>=ClosePair(']')<CR>
"":inoremap " ""<ESC>i
"":inoremap ' ''<ESC>i

""""""""""""""""""""""""""""""
" airline
""""""""""""""""""""""""""""""

set laststatus=2
set ttimeoutlen=50
set lazyredraw
let g:airline_theme             = "bubblegum" 
"let g:airline_enable_branch     = 1
"let g:airline_enable_syntastic  = 1

" the separator used on the left side >
let g:airline_left_sep='▶'

" the separator used on the right side >
let g:airline_right_sep='◀'

" enable modified detection >
let g:airline_detect_modified=1

" enable paste detection >
let g:airline_detect_paste=1

" enable iminsert detection >
let g:airline_detect_iminsert=1

" determine whether inactive windows should have the left section collapsed to
"  only the filename of that buffer.  >
let g:airline_inactive_collapse=1
  
" enable/disable detection of whitespace errors. >
let g:airline#extensions#whitespace#enabled = 0


""function ClosePair(char)
""  if getline('.')[col('.') - 1] == a:char
""        return "\<Right>"
""  else
""        return a:char
""  endif
""endfun
"括号自动补全 结束


""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set fold"""""""""""""""

""set cursorline
set ruler
set foldmethod=syntax

""set foldenable              " 开始折叠
""set foldmethod=marker       " 设置语法折叠
set foldcolumn=0            " 设置折叠区域的宽度
setlocal foldlevel=4        " 设置折叠层数为
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>






" ======= 编译 && 运行 ======= "

" 编译C源文件
"func! CompileGcc()
"    exec "w"
"    let compilecmd="!gcc -Wall -pedantic -std=c99 "
"    let compileflag="-o %<"
"    exec compilecmd." % ".compileflag
"endfunc
"
"" 编译C++源文件
"func! CompileCpp()
"    exec "w"
"    let compilecmd="!g++ -Wall -pedantic -std=c++98 "
"    let compileflag="-o %<"
"    exec compilecmd." % ".compileflag
"endfunc
"
"" 编译Java源文件
"func! CompileJava()
"    exec "w"
"    exec "!javac %"
"endfunc
"
"" 编译Haskell源文件
"func! CompileHaskell()
"    exec "w"
"    let compilecmd="!ghc --make "
"    let compileflag="-o %<"
"    exec compilecmd." % ".compileflag
"endfunc
"
"" 根据文件类型自动选择相应的编译函数
"func! CompileCode()
"        exec "w"
"        if &filetype == "c"
"            exec "call CompileGcc()"
"        elseif &filetype == "cpp"
"            exec "call CompileCpp()"
"        elseif &filetype == "java"
"            exec "call CompileJava()"
"        elseif &filetype == "haskell"
"            exec "call CompileHaskell()"
"        elseif &filetype == "lua"
"            exec "!lua %<.lua"
"        elseif &filetype == "perl"
"            exec "!perl %<.pl"
"        elseif &filetype == "python"
"            exec "!python %<.py"
"        elseif &filetype == "ruby"
"            exec "!ruby %<.rb"
"        endif
"endfunc
"
"" 运行可执行文件
"func! RunResult()
"        exec "w"
"        if &filetype == "c"
"            exec "! ./%<"
"        elseif &filetype == "cpp"
"            exec "! ./%<"
"        elseif &filetype == "java"
"            exec "!java %<"
"        elseif &filetype == "haskell"
"            exec "! ./%<"
"        elseif &filetype == "lua"
"            exec "!lua %<.lua"
"        elseif &filetype == "perl"
"            exec "!perl %<.pl"
"        elseif &filetype == "python"
"            exec "!python %<.py"
"        elseif &filetype == "ruby"
"            exec "!ruby %<.rb"
"        endif
"endfunc
"
"" Ctrl + C 一键保存、编译
"map <c-c> :call CompileCode()<CR>
"imap <c-c> <ESC>:call CompileCode()<CR>
"vmap <c-c> <ESC>:call CompileCode()<CR>
"
"" Ctrl + R 一键保存、运行
"map <c-e> :call RunResult()<CR>
"imap <c-e> <ESC>:call RunResult()<CR>
"vmap <c-e> <ESC>:call RunResult()<CR>
"
"
"" // The switch of the Source Explorer
"nmap <F8> :SrcExplToggle<CR>
"
"" // Set the height of Source Explorer window
"let g:SrcExpl_winHeight = 8
"
"" // Set 100 ms for refreshing the Source Explorer
"let g:SrcExpl_refreshTime = 100
"
"" // Set "Enter" key to jump into the exact definition context
"let g:SrcExpl_jumpKey = "<ENTER>"
"
"" // Set "Space" key for back from the definition context
"let g:SrcExpl_gobackKey = "<SPACE>"
"
"" // In order to Avoid conflicts, the Source Explorer should know what plugins
"" // are using buffers. And you need add their bufname into the list below
"" // according to the command ":buffers!"
"let g:SrcExpl_pluginList = [
"        \ "__Tag_List__",
"        \ "_NERD_tree_",
"        \ "Source_Explorer"
"    \ ]
"
"" // Enable/Disable the local definition searching, and note that this is not
"" // guaranteed to work, the Source Explorer doesn't check the syntax for now.
"" // It only searches for a match with the keyword according to command 'gd'
"let g:SrcExpl_searchLocalDef = 1
"
"" // Do not let the Source Explorer update the tags file when opening
"let g:SrcExpl_isUpdateTags = 0
"
"" // Use 'Exuberant Ctags' with '--sort=foldcase -R .' or '-L cscope.files' to
"" //  create/update a tags file
"let g:SrcExpl_updateTagsCmd = "ctags --sort=foldcase -R ."
"
"" // Set "<F12>" key for updating the tags file artificially
"let g:SrcExpl_updateTagsKey = "<F12>" 




" Open and close all the three plugins on the same time
"nmap <F8>   :TrinityToggleAll<CR>

" Open and close the srcexpl.vim separately
"nmap <F9>   :TrinityToggleSourceExplorer<CR>

" Open and close the taglist.vim separately
"nmap <F10>  :TrinityToggleTagList<CR>

" Open and close the NERD_tree.vim separately
"nmap <leader>fl  :TrinityToggleNERDTree<CR> 
