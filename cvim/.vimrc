"{{{  Enable plugins
" I'm not oldfag, so, bye-bye good ol vi
set nocompatible
" disable all previously defined commands, useful for reloading vimrc
autocmd!
" dirty cheat to force systemwide filetype settings
" it's neccesary to switch off filetype before calling pathogen
filetype off
"call pathogen#runtime_append_all_bundles()
"call pathogen#helptags()
filetype plugin indent on
syntax on
" enable all plugins
"call pathogen#runtime_append_all_bundles() 
"}}}
"{{{  General options 
set backup                          " keep a backup file
set backupdir=$HOME/.vim/backup
set showcmd                         " display incomplete commands
set incsearch                       " do incremental searching
set smartcase
set hidden
set lazyredraw
set langmap=йцукенгшщзхъфывапролджэячсмитьбюЙЦУКЕНГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ\;qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.QWERTYUIOP{}ASDFGHJKL:\"ZXCVBNM<>

set nocompatible  
set backspace=indent,eol,start  " more powerful backspacing

set history=100                  " keep 50 lines of command line history
set ruler                       " show the cursor position all the time
"
" " Suffixes that get lower priority when doing tab completion for filenames.
" " These are files we are not likely to want to edit or read.
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc

" We don't want use tabs at ALL! Nevertheless, we want tab character appears as 4 spaces
set expandtab                               " replace tab with spaces
set shiftwidth=4                            " define shift value in spaces
set softtabstop=4                           " define display value \t in spaces
set tabstop=4                               " define real value \t in spaces

set foldenable                              " включить фолдинг
set foldmethod=syntax                       " how to make folds
set virtualedit=all                         " feel free to navigate anywhere
set formatoptions=tcqrn                     " define text format options
set wildmenu                                " show pretty line on completion
set shm=aoOAI

set hlsearch                     " Also switch on highlighting the last used search pattern.   

set mouse=a
"}}}
"{{{  Folding 
 let perl_fold = 1
 let perl_fold_blocks = 1
 "let g:tex_fold_enabled=1
 let g:vimsyn_folding = 'afmpP'
 let g:vimsyn_noerror = 1
 let g:xml_syntax_folding = 1
"{{{  pretify fold text with custom function 
function! MyFoldText()
  let line = getline(v:foldstart)
  let commentBegin = '^[ \t]*\(\/\*\|\/\/\)[*/\\]*[ \t]*$'

  if match( line, commentBegin ) == 0
    let prefix = substitute( line, '^\([ \t]\)*.*', '\1*', '' )
    let linenum = v:foldstart

    while linenum < v:foldend
      let line = getline( linenum )
      let content = substitute( line, '^\([ \t\/\*]*\)\(.*\)$', '\2', 'g' )
      if content != ''
        break
      endif
      let linenum = linenum + 1
    endwhile

    let sub = prefix . ' ' . content
  else
    let sub = line
    let startbrace = substitute( line, '^.*{[ \t]*$', '{', 'g')
    if startbrace == '{'
      let line = getline(v:foldend)
      let endbrace = substitute( line, '^[ \t]*}\(.*\)$', '}', 'g')
      if endbrace == '}'
        let sub = sub.substitute( line, '^[ \t]*}\(.*\)$', '..}\1', 'g')
      endif
    endif
  endif

  let n = v:foldend - v:foldstart + 1
  let l:info = "  [" . n . "]"
  let num_w = getwinvar( 0, '&number' ) * getwinvar( 0, '&numberwidth' )
  let fold_w = getwinvar( 0, '&foldcolumn' )

  let maxSubLength = winwidth(0) - num_w - fold_w - strlen( l:info ) 
  let sub = strpart( sub, 0, maxSubLength)
  return printf('%-*s%s', maxSubLength, sub, l:info)
endfunction
"}}}
"}}}
"{{{  Autocommands and plugins' options
"{{{  all
"{{{  plugins options 
"{{{  NERD Tree 
      let NERDSpaceDelims=1
      let NERDTreeWinPos="right"
"}}}
"{{{  Bufexplorer 
      let g:bufExplorerDefaultHelp=1       " Do not show default help.
      let g:bufExplorerReverseSort=0       " Sort in reverse order.
      let g:bufExplorerShowRelativePath=1  " Show relative paths.
      let g:bufExplorerSortBy='name'       " Sort by most recently used.
      let g:bufExplorerSplitRight=1        " Split right.
"}}}
"{{{  ProtoDef 
     let protodefprotogetter='~/Dropbox/config/bin/pullproto.pl' 
"}}}
"{{{  SessionMgr
     let g:SessionMgr_AutoManage = 0
"}}}
"}}}
"When editing a file, always jump to the last known cursor position. 
" Don't do it when the position is invalid or when inside an event handler
" (happens when dropping a file on gvim).
" Also don't do it when the mark is in the first line, that is the default
" position when opening a file.
autocmd BufReadPost *
      \ if line("'\"") > 1 && line("'\"") <= line("$") |
      \   exe "normal! g`\"" |
      \ endif
"}}}
"{{{  text
"set 'textwidth' to 78 characters for text files. 
autocmd FileType text setlocal textwidth=78
"}}}
"{{{  snipmate 
"{{{  plugins options
  function! ReloadSnippets( snippets_dir, ft )
    if strlen( a:ft ) == 0
      let filetype = "_"
    else
      let filetype = a:ft
    endif

    call ResetSnippets()
    call GetSnippets( a:snippets_dir, filetype )
  endfunction

  let g:snips_author = 'Alexander Mishchenko'
"}}}
autocmd FileType snippet set ai
autocmd FileType snippet set flp+=	
"}}}
"{{{  java 
let java_highlight_all=1 
let java_ignore_javadoc=0
" let java_highlight_functions="indent"

autocmd Filetype java setlocal foldtext=MyFoldText()
autocmd Filetype java setlocal omnifunc=javacomplete#Complete
autocmd FileType java set tags=./tags,tags,/usr/share/vim/vimfiles/tags/java
autocmd FileType java set makeprg=myant
" java compilation tricks 
" the "\%DEntering:\ %f," rule relies on a sed script which generates
" "Entering: " messages for each test class run (the directory name is
" generated from the test class package and a hard-coded src root)
" the "%\\C" at the start of the exception matching line tells to match
" case-exact (the exception mathching lines rely on the %D rule that sets
" up the correct directory from the package structure)
" ant/junit/javac errorformat
autocmd FileType java set errorformat=
\%-G%.%#build.xml:%.%#,
\%-G%.%#warning:\ %.%#,
\%-G%\\C%.%#EXPECTED%.%#,
\%f:%l:\ %#%m,
\C:%f:%l:\ %m,
\%DEntering:\ %f\ %\\=,
\%ECaused\ by:%[%^:]%#:%\\=\ %\\=%m,
\%ERoot\ cause:%[%^:]%#:%\\=\ %\\=%m,
\%Ecom.%[%^:]%#:%\\=\ %\\=%m,
\%Eorg.%[%^:]%#:%\\=\ %\\=%m,
\%Ejava.%[%^:]%#:%\\=\ %\\=%m,
\%Ejunit.%[%^:]%#:%\\=\ %\\=%m,
\%-Z%\\C\	at\ com.mypkg.%.%#.test%[A-Z]%.%#(%f:%l)\ %\\=,
\%-Z%\\C\	at\ com.mypkg.%.%#.setUp(%f:%l)\ %\\=,
\%-Z%\\C\	at\ com.mypkg.%.%#.tearDown(%f:%l)\ %\\=,
\%-Z%^\ %#%$,
\%-C%.%#,
\%-G%.%#
" autocmd FileType java :so "~/.vim/javakit/JavaKit.vim"
" autocmd FileType java set gp=galj
"}}}
"{{{  c++
autocmd Filetype c,cpp setlocal foldtext=MyFoldText()
"}}}
"{{{  python 
autocmd FileType python setlocal foldmethod=expr
autocmd FileType python setlocal foldexpr=GetPythonFold(v:lnum)
autocmd FileType python setlocal foldtext=PythonFoldText()
"}}}
"{{{  ms word 
autocmd BufReadPre *.doc set ro
autocmd BufReadPost *.doc %!antiword "%"
"}}}
"{{{  rsl
au BufNewFile,BufRead *.rsl setf rsl | set makeprg=rsltc\ % 
" au BufNewFile,BufRead *.rsl set errorformat=%f:%l:%c: %t
"}}}
"{{{  latex
  au Filetype tex set grepprg=grep\ -nH\ $*
  au FileType tex set iskeyword+=:
  let g:tex_flavor = "latex"
  let g:Tex_DefaultTargetFormat = 'pdf'
  let g:Tex_MultipleCompileFormats = 'dvi,pdf'
  let g:Tex_IgnoreLevel = 10
  let g:Tex_IgnoredWarnings =
	\'Underfull'."\n".
	\'Overfull'."\n".
	\'specifier changed to'."\n".
	\'You have requested'."\n".
	\'Missing number, treated as zero.'."\n".
	\'There were undefined references'."\n".
	\'Citation %.%# undefined'."\n". 
	\'Empty `thebibliography'. "\n".
	\'Font shape'."\n"
  let g:Tex_GotoError = 0
  let g:Tex_HotKeyMappings =  'eqnarray*,eqnarray,bmatrix,frame'
  let g:Tex_ViewRule_pdf = 'evince' 
"  nunmap <buffer> <Leader>ll :call RunLaTeX()<cr>
"  vunmap <buffer> <Leader>ll :call Tex_PartCompile()<cr>
"  nunmap <buffer> <Leader>lv :call ViewLaTeX()<cr>
"  nunmap <buffer> <Leader>ls :call Tex_ForwardSearchLaTeX()<cr>

"}}}
"}}}
"{{{  Commands 
"{{{  Diff between curr buffer and file it was loaded from 
" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif
"}}}
"{{{  Multiple sustitution 
" " replacing all occurences of each key in the dictionary with its value
function! Refactor(dict) range
  execute a:firstline . ',' . a:lastline .  's/\C\<\%(' . join(keys(a:dict),'\|'). '\)\>/\='.string(a:dict).'[submatch(0)]/ge'
endfunction
command! -range=% -nargs=1 Refactor :<line1>,<line2>call Refactor(<args>)
"}}}
"{{{  Open snippets file
fun! OpenSnippet()
  exec 'rightb vsplit ' . g:snippets_dir . &filetype . '.snippets' 
endf
command! OpenSnippet :call OpenSnippet()
"}}}
"{{{  spelling
let g:IsSpellingSwitchedOn = 0
function! SwitchSpelling()
  if (g:IsSpellingSwitchedOn == 1)
    silent exec 'syntax clear SpellErrors'
    let g:IsSpellingSwitchedOn = 0
  else
    silent exec 'source `vimspell.sh %`'
    let g:IsSpellingSwitchedOn = 1
  endif
endfunction
command! SwitchSpelling :call SwitchSpelling()
" au BufNewFile,BufRead *.rsl set errorformat=%f:%l:%c: %t
"}}}
"}}}
"{{{  Plugins list
" BUNDLE: git://git.wincent.com/command-t.git
" BUNDLE: git://github.com/vim-scripts/Conque-Shell.git
" BUNDLE: git://github.com/vim-scripts/DoxygenToolkit.vim.git
" BUNDLE: git://github.com/vim-scripts/FSwitch.git
" BUNDLE: git://github.com/vim-scripts/LaTeX-Suite-aka-Vim-LaTeX.git
" BUNDLE: git://github.com/vim-scripts/StarRange.git
" BUNDLE: git://github.com/vim-scripts/Tag-Signature-Balloons.git
" BUNDLE: git://github.com/vim-scripts/The-NERD-Commenter.git
" BUNDLE: git://github.com/vim-scripts/The-NERD-tree.git
" BUNDLE: git://github.com/vim-scripts/Workspace-Manager.git
" BUNDLE: git://github.com/vim-scripts/c.vim.git
" BUNDLE: git://github.com/vim-scripts/calendar.vim--Matsumoto.git
" BUNDLE: git://github.com/vim-scripts/gitdiff.vim.git
" BUNDLE: git://github.com/vim-scripts/gnupg.git
" BUNDLE: git://github.com/vim-scripts/imaps.vim.git
"         git://github.com/vim-scripts/javacomplete.git
" BUNDLE: git://github.com/vim-scripts/journal.vim.git
" BUNDLE: git://github.com/vim-scripts/libList.vim.git
" BUNDLE: git://github.com/vim-scripts/matchit.zip.git
" BUNDLE: git://github.com/vim-scripts/SessionMgr.git
"         git://github.com/vim-scripts/sessionman.vim.git
"         git://github.com/msanders/snipmate.vim.git
" BUNDLE: git://github.com/vim-scripts/sudo.vim.git
"         git://github.com/vim-scripts/translit_converter.git
" BUNDLE: git://github.com/vim-scripts/view_diff.git
" BUNDLE: git://github.com/vim-scripts/surround.vim.git
" BUNDLE: git://github.com/vim-scripts/bufexplorer.zip.git
"         git://github.com/vim-scripts/rsl.vim.git
"
" BUNDLE: git://github.com/vim-scripts/OmniCppComplete.git
"
" BUNDLE: git://github.com/vim-scripts/Sorcerer.git
"}}}

highlight Folded ctermbg=8

"{{{  Mappings 
let mapleader = ","
map Q gq
map Y y$
inoremap <C-U> <C-G>u<C-U>
noremap <C-n> :cn<CR>
noremap <C-p> :cp<CR>
nmap <C-s> :w<CR>
nmap ,r :call ReloadSnippets("~/.vim/bundle/snipMate/snippets/", &filetype)<CR>
nmap ,h :tabprev<CR>
nmap ,l :tabnext<CR>
nmap ,j :bnext<CR>
nmap ,k :bprevious<CR> 
nmap ,w <c-w>
nmap ,t :tabnew<CR>
nmap ,n :NERDTreeToggle<CR>
nmap ,p :set paste<CR>
nmap ,o :set paste!<CR>
"nmap ,s :SessionList<CR>
"nmap <F5> :make<CR>
"imap <F5> :make<CR>a
nmap <F2> :Tlist<CR>
imap <F2> :Tlist<CR>a
nmap <bffer> <silent> <leader> ,PP " ProtoDef
nmap <silent> <Leader>of :FSHere<cr> " FSwitch
nmap ¯ :set nohlsearch<CR> " mapped to <alt-/>
imap ¯ <ESC>:set nohlsearch<CR>a " mapped to <alt-/>
nmap <Leader>x :JournalToggle<CR>

nmap <C--> :SwitchSpelling<CR><CR>
imap <C--> <ESC>:SwitchSpelling<CR><CR>a



" my settings
set background=dark
set t_Co=256
"colorscheme neon
"colorscheme 256-grayvim
hi Normal ctermbg=NONE
set number
set mousehide "Спрятать курсор мыши когда набираем текст
set mouse=a "Включить поддержку мыши
set termencoding=utf-8 "Кодировка терминала
set novisualbell "Не мигать 
"set t_vb= "Не пищать! (Опции 'не портить текст', к сожалению, нету)
"Вырубаем .swp и ~ (резервные) файлы
set nobackup
set noswapfile
set encoding=utf-8 " Кодировка файлов по умолчанию
set fileencodings=utf8,cp1251 " Возможные кодировки файлов, если файл не в unicode кодировке, то будет использоваться cp1251

command Wq wq
command W w
command Q q

"Tab settings for indenting and switching between windows, tabs
vmap <Tab> >gv
vmap <S-Tab> <gv
imap <S-Tab> <Esc><<i
nmap <S-Tab> <<
nmap <Tab> <C-W>w
"nmap <S-Tab> <Esc>:tabnext<CR>
" 'Smart' saving
nmap <F4> <Esc>:w<CR>
imap <F4> <Esc>:w<CR>
" execute make
nmap <F6> <Esc>:!make<CR>
imap <F6> <Esc>:!make<CR>

"taglist settings
"let Tlist_WinWidth = 40

" "Fuck replace mode"
imap <Ins> <Esc>a
"Replace
nmap <F5> :%s/\<<C-r>=expand("<cword>")<cr>\>/
"Search
nmap <F3> /<C-r>=expand("<cword>")<CR><CR>

" Fix backspace
imap <Backspace> <Esc>x<Ins>
nmap <Backspace> <Esc>hx<Ins>

" line break to <Enter>
nmap <CR> i<CR><Esc>l

function! TabComplete(direction)
    " Check if the char before the char under the cursor is an 
    " underscore, letter, number, dot or opening parentheses.
    " If it is, and if the popup menu is not visible, use 
    " I_CTRL-X_CTRL-K ('dictionary' only completion)--otherwise, 
    " use I_CTRL-N to scroll downward through the popup menu or
    " use I_CTRL-P to scroll upward through the popup menu, 
    " depending on the value of a:direction.
    " If the char is some other character, insert a normal Tab:
    if searchpos('[_a-zA-Z0-9.(а-яА-я]\%#', 'nb') != [0, 0] 
        if !pumvisible()
            "return "\<C-X>\<C-N>"
            return "\<C-X>\<C-P>"
        else
            if a:direction == 'down'
                return "\<C-N>"
            else
                return "\<C-P>"
            endif
        endif
    else
        return "\<Tab>"
    endif
endfunction

"tab completion, C-Tab in python_pydiction.vim
imap <Tab> <C-R>=TabComplete('up')<CR>
imap <S-Tab> <C-X><C-O>


" C++ + qt4 completion
" configure tags - add additional tags here or comment out not-used ones
set tags+=~/.vim/tags/cpp
"set tags+=~/.vim/tags/gl
"set tags+=~/.vim/tags/sdl
set tags+=~/.vim/tags/qt4
" build tags of your own project with Ctrl-F12
" map <C-F12> :!ctags -R --sort=yes --c++-kinds=+pl --fields=+iaS --extra=+q .<CR>

" OmniCppComplete
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 1 " autocomplete after .
let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest,preview


"Перед сохранением вырезаем пробелы на концах (только в .py файлах)
autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``

function! CreatePokerTest()
"    exec "g/Event:\ /exec 'normal f{v%' | exec ':join!'/g"
    exec "v/Event:\ /normal dd"
    exec "%s/Event:\ //g"
    exec '%s/\(.*\)/(0, \1),/'
    normal ggievents = [
    normal GA]
    exec '%s/\(\s\)\s*/\1/g'
    normal ggVG=
    exec "w"
endf
command! CreatePokerTest :call CreatePokerTest()

let s:defpat = '^\s*\(@\|class\s.*:\|def\s\|if\s\|for\s\|else\s\|while\s\|elif\s\|except\s\|try\s\)'
function! PythonFoldText()
  let fs = v:foldstart
  while getline(fs) =~ '^\s*@' | let fs = nextnonblank(fs + 1)
  endwhile
  let line = getline(fs)
  let nnum = nextnonblank(fs + 1)
  let nextline = getline(nnum)
  "get the document string: next line is ''' or """
  if nextline =~ "^\\s\\+[\"']\\{3}\\s*$"
      let line = line . " " . matchstr(getline(nextnonblank(nnum + 1)), '^\s*\zs.*\ze$')
  "next line starts with qoutes, and has text
  elseif nextline =~ "^\\s\\+[\"']\\{1,3}"
      let line = line." ".matchstr(nextline, "^\\s\\+[\"']\\{1,3}\\zs.\\{-}\\ze['\"]\\{0,3}$")
  elseif nextline =~ '^\s\+pass\s*$'
    let line = line . ' pass'
  endif
  "compute the width of the visible part of the window (see Note above)
  let w = winwidth(0) - &foldcolumn - (&number ? 8 : 0)
  let size = 1 + v:foldend - v:foldstart
  "compute expansion string
  let spcs = '................'
  while strlen(spcs) < w | let spcs = spcs . spcs
  endwhile
  "expand tabs (mail me if you have tabstop>10)
  let onetab = strpart('          ', 0, &tabstop)
  let line = substitute(line, '\t', onetab, 'g')
  return strpart(line.spcs, 0, w-strlen(size)-7).'.'.size.' lines'
endfunction

function! GetBlockIndent(lnum)
    " Auxiliary function; determines the indent level of the surrounding def/class
    " "global" lines are level 0, first def &shiftwidth, and so on
    " scan backwards for class/def that is shallower or equal
    let ind = 100
    let p = a:lnum+1
    while indent(p) >= 0
        let p = p - 1
        " skip empty and comment lines
        if getline(p) =~ '^$\|^\s*#' | continue
        " zero-level regular line
        elseif indent(p) == 0 | return 0
        " skip deeper or equal lines
        elseif indent(p) >= ind || getline(p) =~ '^$\|^\s*#' | continue
        " indent is strictly less at this point: check for def/class
        elseif getline(p) =~ s:defpat && getline(p) !~ '^\s*@'
            " level is one more than this def/class
            return indent(p) + &shiftwidth
        endif
        " shallower line that is neither class nor def: continue search at new level
        let ind = indent(p)
    endwhile
    "beginning of file
    return 0
endfunction

" Clever debug code, use as: call PrintIfCount(n,"Line: ".a:lnum.", value: ".x)
let s:counter=0
function! PrintIfCount(n,t)
    "Print text the nth time this function is called
    let s:counter = s:counter+1
    if s:counter==a:n | echo a:t
    endif
endfunction

function! GetPythonFold(lnum)
    " Determine folding level in Python source (see "higher foldlevel theory" below)
    let line = getline(a:lnum)
    let ind = indent(a:lnum)
    " Case D***: class and def start a fold
    " If previous line is @, it is not the first
    if line =~ s:defpat && getline(prevnonblank(a:lnum-1)) !~ '^\s*@'
        " let's see if this range of 0 or more @'s end in a class/def
        let n = a:lnum
        while getline(n) =~ '^\s*@' | let n = nextnonblank(n + 1)
        endwhile
        " yes, we have a match: this is the first of a real def/class with decorators
        if getline(n) =~ s:defpat
            return ">".(ind/&shiftwidth+1)
        endif
    " Case E***: empty lines fold with previous
    " (***) change '=' to -1 if you want empty lines/comment out of a fold
    elseif line == '' | return '='
    endif
    " now we need the indent from previous
    let p = prevnonblank(a:lnum-1)
    while p>0 && getline(p) =~ '^\s*#' | let p = prevnonblank(p-1)
    endwhile
    let pind = indent(p)
    " If previous was definition: count as one level deeper
    if getline(p) =~ s:defpat && getline(prevnonblank(a:lnum - 1)) !~ '^\s*@'
        let pind = pind + &shiftwidth
    " if begin of file: take zero
    elseif p==0 | let pind = 0
    endif
    " Case S*=* and C*=*: indent equal
    if ind>0 && ind==pind | return '='
    " Case S*>* and C*>*: indent increase
    elseif ind>pind | return '='
    " All cases with 0 indent
    elseif ind==0
        " Case C*=0*: separate global code blocks
        if pind==0 && line =~ '^#' | return 0
        " Case S*<0* and S*=0*: global code
        elseif line !~'^#'
            " Case S*<0*: new global statement if/while/for/try/with
            if 0<pind && line!~'^else\s*:\|^except.*:\|^elif.*:\|^finally\s*:' | return '>1'
            " Case S*=0*, after level 0 comment
            elseif 0==pind && getline(prevnonblank(a:lnum-1)) =~ '^\s*#' | return '>1'
            " Case S*=0*, other, stay 1
            else | return '='
            endif
        endif
        " Case C*<0= and C*<0<: compute next indent
        let n = nextnonblank(a:lnum+1)
        while n>0 && getline(n) =~'^\s*#' | let n = nextnonblank(n+1)
        endwhile
        " Case C*<0=: split definitions
        if indent(n)==0 | return 0
        " Case C*<0<: shallow comment
        else | return -1
        end
    endif
    " now we really need to compute the actual fold indent
    " do the hard computation
    let blockindent = GetBlockIndent(a:lnum)
    " Case SG<* and CG<*: global code, level 1
    if blockindent==0 | return 1
    endif
    " now we need the indent from next
    let n = nextnonblank(a:lnum+1)
    while n>0 && getline(n) =~'^\s*#' | let n = nextnonblank(n+1)
    endwhile
    let nind = indent(n)
    " Case CR<= and CR<>
    "if line !~ '^\s*#' | call PrintIfCount(4,"Line: ".a:lnum.", blockindent: ".blockindent.", n: ".n.", nind: ".nind.", p: ".p.", pind: ".pind)
    endif
    if line =~ '^\s*#' && ind>=nind | return -1
    " Case CR<<: return next indent
    elseif line =~ '^\s*#' | return nind / &shiftwidth
    " Case SR<*: return actual indent
    else | return blockindent / &shiftwidth
    endif
endfunction
"}}}

" vim: foldmethod=marker
