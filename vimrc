"for pathogen, manage other extentions
execute pathogen#infect() 
"
" 侦测文件类型
filetype on

" 载入文件类型插件
filetype plugin on

"enable c.vim

" 为特定文件类型载入相关缩进文件
filetype indent on

"set guifont=Envy_Code_R:h10:cANSI
set guifont=Bitstream_Vera_Sans_Mono:h10:cANSI

"set encoding=utf-8
set gfw=幼圆:h10.5:cGB2312
"set guifontwide=YaHei\ Consolas\ Hybrid:h10
"set guifontwide=Courier_New:h10:cANSI

"make Vim behave in a more useful way.
set nocompatible

"set gui option
set go=gmrLt

"colorscheme darkblue
"colorscheme evening
"source $VIMRUNTIME/vimrc_example.vim

set fdm=marker

"windows窗口最大化设置（如果不想打开vim后就自动最大化，把这行删去）
au GUIEnter * simalt ~x

"Do not keep *~ files
set nobackup

"Set to auto read when a file is changed from the outside
set autoread

"Sets how many lines of history VIM har to remember
set history=400

"Set statusline
"setlocal statusline+=%#StatuslinePath#%-0.20{StatusLineGetPath()}%0*        " path 
"setlocal statusline+=%#StatuslineFileName#\/%t\                             " file name 
"setlocal statusline+=%#StatuslinePosition#\%l\ %c-%v                        " position 
"setlocal statusline+=%#StatuslinePercent#\%L\ %P                            " position percentage
"set statusline=[%F]%y%r%m%*%=[Line:%l/%L,Column:%c][%p%%]
set laststatus=2
"source $VIMRUNTIME/mswin.vim
"behave mswin

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Enable syntax highlight
syntax enable


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VIM userinterface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Highlight the screen line of the cursor with CursorLine
"set cursorline

"Set 7 lines to the cursors away from the border- when moving vertical..
set so=7

"Turn on WiLd menu
set wildmenu

"Always show current position
set ruler

"The commandbar is 2 high
set cmdheight=2

"Show line number
set nu

"Set backspace
set backspace=eol,start,indent

"Bbackspace and cursor keys wrap to
set whichwrap+=<,>,h,l

"show matching bracets
set showmatch

"How many tenths of a second to blink
set mat=2

"Highlight search things
set hlsearch
"imediately show the search result
set is

"set hide unsaved buf
set hidden


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Folding
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Enable folding, I find it very useful
"set nofen
set foldenable
set fdl=1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set expandtab
set shiftwidth=2
set ambiwidth=double
set smarttab
"Set Tab=4 spaces
set ts=4
set lbr
set tw=500
set selection=inclusive

   """"""""""""""""""""""""""""""
   " Indent
   """"""""""""""""""""""""""""""
   "Auto indent
   set ai
   "Set auto indent width = 4 spaces
   set sw=4

   "Smart indet
   set si

   "C-style indenting
   set cindent  "usage: select codes, press '=' key, the codes will autoindenting

   "Wrap lines
   set wrap

"set formatoptions
"t：根据 textwidth 自动折行；
"c：在（程序源代码中的）注释中自动折行，插入合适的注释起始字符；
"r：插入模式下在注释中键入回车时，插入合适的注释起始字符；
"q：允许使用“gq”命令对注释进行格式化；
"n：识别编号列表，编号行的下一行的缩进由数字后的空白决定（与“2”冲突，需要“autoindent”）；
"2：使用一段的第二行的缩进来格式化文本；
"l：在当前行长度超过 textwidth 时，不自动重新格式化；
"m：在多字节字符处可以折行，对中文特别有效（否则只在空白字符处折行）；
"M：在拼接两行时（重新格式化，或者是手工使用“J”命令），如果前一行的结尾或后一行的开头是多字节字符，则不插入空格，非常适合中文
set formatoptions+=mM

"auto trailing whitespace
autocmd BufWritePre *.c :%s/\s\+$//e
autocmd BufWritePre *.h :%s/\s\+$//e
autocmd BufWritePre Kconfig :%s/\s\+$//e
autocmd BufWritePre Makefile :%s/\s\+$//e


""Encoding settings
"if has("multi_byte")
"    " Set fileencoding priority
"    if getfsize(expand("%")) > 0
"        set fileencodings=ucs-bom,utf-8,cp936,big5,euc-jp,euc-kr,latin1
"    else
"        set fileencodings=cp936,big5,euc-jp,euc-kr,latin1
"    endif
"
"    " CJK environment detection and corresponding setting
"    if v:lang =~ "^zh_CN"
"        " Use cp936 to support GBK, euc-cn == gb2312
"        set encoding=cp936
"        set termencoding=cp936
"        set fileencoding=cp936
"    elseif v:lang =~ "^zh_TW"
"        " cp950, big5 or euc-tw
"        " Are they equal to each other?
"        set encoding=big5
"        set termencoding=big5
"        set fileencoding=big5
"    elseif v:lang =~ "^ko"
"        " Copied from someone's dotfile, untested
"        set encoding=euc-kr
"        set termencoding=euc-kr
"        set fileencoding=euc-kr
"    elseif v:lang =~ "^ja_JP"
"        " Copied from someone's dotfile, unteste
"        set encoding=euc-jp
"        set termencoding=euc-jp
"        set fileencoding=euc-jp
"    endif
"    " Detect UTF-8 locale, and replace CJK setting if needed
"    if v:lang =~ "utf8$" || v:lang =~ "UTF-8$"
"        set encoding=utf-8
"        set termencoding=utf-8
"        set fileencoding=utf-8
"    endif
"else
"    echoerr "Sorry, this version of (g)vim was not compiled with multi_byte"
"endif
"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   FOR PLUGINs
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"for vim-indent
let g:indent_guides_guide_size=1

"let g:indent_guides_auto_colors = 0
"let g:indent_guides_guide_size = 1 
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4
"hi IndentGuidesOdd guibg=red ctermbg=3
"hi IndentGuidesEven guibg=green ctermbg=4

"for NERDTree
map <F3> :NERDTreeToggle<CR>

"for Taglist
set tags=tags;/
set autochdir

if &diff
  let Tlist_Auto_Open=0 "don't auto pen when compare two files
else
  let Tlist_Auto_Open=1 "auto pen Tlist when open a file
endif

let Tlist_Use_Right_Window=1
let Tlist_Auto_Update=1 
let Tlist_File_Fold_Auto_Close=1
"auto close Tlist when exiting file.
let Tlist_Exit_OnlyWindow = 1 
"set Tlist width
let Tlist_WinWidth = 35

nnoremap <silent> <F8> :TlistToggle<CR>
"nmap <F7> :copen<CR>
"nmap <F6> :cclose<CR>


"===============================================

"for Source Explorer
" // The switch of the Source Explorer 
nmap <F9> :SrcExplToggle<CR> 

" // Set the height of Source Explorer window 
let g:SrcExpl_winHeight = 8 

" // Set 100 ms for refreshing the Source Explorer 
let g:SrcExpl_refreshTime = 100 

" // Set "Enter" key to jump into the exact definition context 
" let g:SrcExpl_jumpKey = "<ENTER>" 

" // Set "Space" key for back from the definition context 
let g:SrcExpl_gobackKey = "<SPACE>" 

" // In order to Avoid conflicts, the Source Explorer should know what plugins 
" // are using buffers. And you need add their bufname into the list below 
" // according to the command ":buffers!" 
let g:SrcExpl_pluginList = [ 
        \ "__Tag_List__", 
        \ "_NERD_tree_", 
        \ "Source_Explorer" 
    \ ] 

" // Enable/Disable the local definition searching, and note that this is not 
" // guaranteed to work, the Source Explorer doesn't check the syntax for now. 
" // It only searches for a match with the keyword according to command 'gd' 
let g:SrcExpl_searchLocalDef = 1 

" // Do not let the Source Explorer update the tags file when opening 
let g:SrcExpl_isUpdateTags = 0 

" // Use 'Exuberant Ctags' with '--sort=foldcase -R .' or '-L cscope.files' to 
" //  create/update a tags file 
let g:SrcExpl_updateTagsCmd = "ctags --sort=foldcase -R ." 

" // Set "<F12>" key for updating the tags file artificially 
"let g:SrcExpl_updateTagsKey = "<F12>" 

"===============================================

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '"' . $VIMRUNTIME . '\diff"'
      let eq = '""'
    "if &sh =~ '\<cmd'
      "let cmd = '""' . $VIMRUNTIME . '\diff"'
      "let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction


nmap <C-h> <C-w>h
nmap <C-l> <C-w>l
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
noremap <C-J> <C-W>j
noremap <C-K> <C-W>k
noremap <C-H> <C-W>h
noremap <C-L> <C-W>l
map <Leader>wr :set wrap<CR>


" for windows
map <F12> :!python.exe %
"source cscope_macros.vim

" for mac
"让vim的+寄存器相当于系统剪贴板
vmap "+y :w !pbcopy<CR><CR> 
nmap "+p :r !pbpaste<CR><CR>
