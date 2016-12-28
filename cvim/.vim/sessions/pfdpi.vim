let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <silent> <Plug>NERDCommenterInInsert  <BS>:call NERDComment(0, "insert")
imap <silent> <Plug>IMAP_JumpBack =IMAP_Jumpfunc('b', 0)
imap <silent> <Plug>IMAP_JumpForward =IMAP_Jumpfunc('', 0)
imap <BS> x<Insert>
imap <Insert> a
imap <F6> :!make
imap <F4> :w
imap <S-Tab> 
imap <C--> :SwitchSpellinga
imap <F2> :Tlista
nmap 	 w
vmap 	 >gv
vmap <NL> <Plug>IMAP_JumpForward
nmap <NL> <Plug>IMAP_JumpForward
nmap  il
noremap  :cn
noremap  :cp
nmap  :w
nmap ,caL <Plug>CalendarH
nmap ,cal <Plug>CalendarV
nmap ,ca <Plug>NERDCommenterAltDelims
vmap ,cA <Plug>NERDCommenterAppend
nmap ,cA <Plug>NERDCommenterAppend
vmap ,c$ <Plug>NERDCommenterToEOL
nmap ,c$ <Plug>NERDCommenterToEOL
vmap ,cu <Plug>NERDCommenterUncomment
nmap ,cu <Plug>NERDCommenterUncomment
vmap ,cn <Plug>NERDCommenterNest
nmap ,cn <Plug>NERDCommenterNest
vmap ,cb <Plug>NERDCommenterAlignBoth
nmap ,cb <Plug>NERDCommenterAlignBoth
vmap ,cl <Plug>NERDCommenterAlignLeft
nmap ,cl <Plug>NERDCommenterAlignLeft
vmap ,cy <Plug>NERDCommenterYank
nmap ,cy <Plug>NERDCommenterYank
vmap ,ci <Plug>NERDCommenterInvert
nmap ,ci <Plug>NERDCommenterInvert
vmap ,cs <Plug>NERDCommenterSexy
nmap ,cs <Plug>NERDCommenterSexy
vmap ,cm <Plug>NERDCommenterMinimal
nmap ,cm <Plug>NERDCommenterMinimal
vmap ,c  <Plug>NERDCommenterToggle
nmap ,c  <Plug>NERDCommenterToggle
vmap ,cc <Plug>NERDCommenterComment
nmap ,cc <Plug>NERDCommenterComment
nnoremap <silent> ,bd :Bclose
nmap ,x :JournalToggle
nmap <silent> ,of :FSHere " FSwitch
nmap ,n :NERDTreeToggle
nmap ,t :tabnew
nmap ,w 
nmap ,k :bprevious 
nmap ,j :bnext
nmap ,l :tabnext
nmap ,h :tabprev
nmap ,r :call ReloadSnippets("~/.vim/bundle/snipMate/snippets/", &filetype)
nmap <bffer> <silent> , ,PP " ProtoDef
imap ¯ :set nohlsearcha " mapped to <alt-/>
nmap K :Welp
map Q gq
xmap S <Plug>VSurround
map Y y$
vmap [% [%m'gv``
vmap ]% ]%m'gv``
vmap a% [%v]%
nmap cs <Plug>Csurround
nmap ds <Plug>Dsurround
nmap gx <Plug>NetrwBrowseX
xmap gS <Plug>VgSurround
xmap s <Plug>Vsurround
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
nnoremap <SNR>38_JournalToggle :JournalToggle
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
nnoremap <SNR>37_JournalToggle :JournalToggle
nnoremap <silent> <Plug>CalendarH :cal Calendar(1)
nnoremap <silent> <Plug>CalendarV :cal Calendar(0)
nmap <silent> <Plug>NERDCommenterAppend :call NERDComment(0, "append")
nnoremap <silent> <Plug>NERDCommenterToEOL :call NERDComment(0, "toEOL")
vnoremap <silent> <Plug>NERDCommenterUncomment :call NERDComment(1, "uncomment")
nnoremap <silent> <Plug>NERDCommenterUncomment :call NERDComment(0, "uncomment")
vnoremap <silent> <Plug>NERDCommenterNest :call NERDComment(1, "nested")
nnoremap <silent> <Plug>NERDCommenterNest :call NERDComment(0, "nested")
vnoremap <silent> <Plug>NERDCommenterAlignBoth :call NERDComment(1, "alignBoth")
nnoremap <silent> <Plug>NERDCommenterAlignBoth :call NERDComment(0, "alignBoth")
vnoremap <silent> <Plug>NERDCommenterAlignLeft :call NERDComment(1, "alignLeft")
nnoremap <silent> <Plug>NERDCommenterAlignLeft :call NERDComment(0, "alignLeft")
vmap <silent> <Plug>NERDCommenterYank :call NERDComment(1, "yank")
nmap <silent> <Plug>NERDCommenterYank :call NERDComment(0, "yank")
vnoremap <silent> <Plug>NERDCommenterInvert :call NERDComment(1, "invert")
nnoremap <silent> <Plug>NERDCommenterInvert :call NERDComment(0, "invert")
vnoremap <silent> <Plug>NERDCommenterSexy :call NERDComment(1, "sexy")
nnoremap <silent> <Plug>NERDCommenterSexy :call NERDComment(0, "sexy")
vnoremap <silent> <Plug>NERDCommenterMinimal :call NERDComment(1, "minimal")
nnoremap <silent> <Plug>NERDCommenterMinimal :call NERDComment(0, "minimal")
vnoremap <silent> <Plug>NERDCommenterToggle :call NERDComment(1, "toggle")
nnoremap <silent> <Plug>NERDCommenterToggle :call NERDComment(0, "toggle")
vnoremap <silent> <Plug>NERDCommenterComment :call NERDComment(1, "norm")
nnoremap <silent> <Plug>NERDCommenterComment :call NERDComment(0, "norm")
vmap <silent> <Plug>IMAP_JumpBack `<i=IMAP_Jumpfunc('b', 0)
vmap <silent> <Plug>IMAP_JumpForward i=IMAP_Jumpfunc('', 0)
vmap <silent> <Plug>IMAP_DeleteAndJumpBack "_<Del>i=IMAP_Jumpfunc('b', 0)
vmap <silent> <Plug>IMAP_DeleteAndJumpForward "_<Del>i=IMAP_Jumpfunc('', 0)
nmap <silent> <Plug>IMAP_JumpBack i=IMAP_Jumpfunc('b', 0)
nmap <silent> <Plug>IMAP_JumpForward i=IMAP_Jumpfunc('', 0)
map <C-F12> :!ctags -R --sort=yes --c++-kinds=+pl --fields=+iaS --extra=+q .
nmap <BS> hx<Insert>
nmap <F3> /=expand("<cword>")
nmap <F5> :%s/\<=expand("<cword>")\>/
nmap <F6> :!make
nmap <F4> :w
nmap <S-Tab> <<
vmap <S-Tab> <gv
nmap <C--> :SwitchSpelling
nmap <F2> :Tlist
imap S <Plug>ISurround
imap s <Plug>Isurround
imap 	 =TabComplete('up')
imap <NL> <Plug>IMAP_JumpForward
imap  <Plug>Isurround
inoremap  u
inoremap <expr>  omni#cpp#maycomplete#Complete()
inoremap <expr> . omni#cpp#maycomplete#Dot()
inoremap <expr> : omni#cpp#maycomplete#Scope()
inoremap <expr> > omni#cpp#maycomplete#Arrow()
nmap ¯ :set nohlsearch " mapped to <alt-/>
map Ý PhUp
let &cpo=s:cpo_save
unlet s:cpo_save
set background=dark
set backspace=indent,eol,start
set backupdir=~/.vim/backup
set completeopt=menuone,longest,preview
set expandtab
set fileencodings=utf8,cp1251
set formatoptions=tcqrn
set guicursor=n-v-c:block,o:hor50,i-ci:hor15,r-cr:hor30,sm:block,a:blinkon0
set helplang=ru
set hidden
set history=100
set hlsearch
set incsearch
set langmap=йцукенгшщзхъфывап��олджэячсмитьбюЙЦУКЕНГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.QWERTYUIOP{}ASDFGHJKL:\"ZXCVBNM<>
set lazyredraw
set mouse=a
set omnifunc=omni#cpp#complete#Main
set ruler
set runtimepath=~/.vim,~/.vim/bundle/Conque-Shell,~/.vim/bundle/DoxygenToolkit,~/.vim/bundle/FSwitch,~/.vim/bundle/LaTeX-Suite-aka-Vim-LaTeX,~/.vim/bundle/OmniCppComplete,~/.vim/bundle/SessionMgr,~/.vim/bundle/Sorcerer,~/.vim/bundle/StarRange,~/.vim/bundle/Tag-Signature-Balloons,~/.vim/bundle/The-NERD-Commenter,~/.vim/bundle/The-NERD-tree,~/.vim/bundle/Workspace-Manager,~/.vim/bundle/bufexplorer.zip,~/.vim/bundle/c,~/.vim/bundle/calendar.vim--Matsumoto,~/.vim/bundle/command-t,~/.vim/bundle/gitdiff,~/.vim/bundle/gnupg,~/.vim/bundle/imaps,~/.vim/bundle/journal,~/.vim/bundle/libList,~/.vim/bundle/matchit.zip,~/.vim/bundle/sudo,~/.vim/bundle/surround,~/.vim/bundle/taglist,~/.vim/bundle/view_diff,/usr/share/vim/vimfiles,/usr/share/vim/vim74,/usr/share/vim/vimfiles/after,~/.vim/bundle/OmniCppComplete/after,~/.vim/after
set shiftwidth=4
set shortmess=aoOAI
set smartcase
set softtabstop=4
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set noswapfile
set tabstop=4
set tags=./tags,./TAGS,tags,TAGS,~/.vim/tags/cpp,~/.vim/tags/qt4
set termencoding=utf-8
set virtualedit=all
set wildmenu
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/work/pfdpi
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 src/pfring_if.c
badd +1 src/ndpi_if.c
badd +6 src/net_stack.c
badd +1 Makefile
badd +28 src/pfring_if.h
badd +50 src/pfdpi.c
badd +1 src/ndpi_if.h
silent! argdel *
edit src/ndpi_if.c
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <silent> <S-F9> :call C_Arguments()
imap <buffer> <silent> <C-F9> :call C_Run()
imap <buffer> <silent> <F9> :call C_Link():call C_HlMessage()
imap <buffer> <silent> <M-F9> :call C_Compile():call C_HlMessage()
nmap <buffer> <silent> <NL> i=C_JumpCtrlJ()
vnoremap <buffer> /* s/*  */<Left><Left><Left>p
nmap <buffer> <silent> \rh :call C_Hardcopy("n")
nnoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points")
nnoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch")
nnoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch")
nnoremap <buffer> <silent> \np :call C_ProtoPick("n")
nnoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
nnoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file")
nnoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file")
nnoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert")
nnoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof")
nnoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union")
nnoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct")
nnoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum")
nnoremap <buffer> <silent> \in :call C_CodeFor("down", "a")
nnoremap <buffer> <silent> \i0 :call C_CodeFor("up"  , "a")
nnoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main")
nnoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static")
nnoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function")
nnoremap <buffer> <silent> \pi0 :call C_PPIf0("a")2ji
nnoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif")
nnoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif")
nnoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif")
nnoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif")
nnoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block")
nnoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block")
nnoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch")
nnoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block")
nnoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block")
nnoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else")
nnoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else")
nnoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block")
nnoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block")
nnoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while")
nnoremap <buffer> <silent> \ct :call C_InsertDateAndTime('dt')
nnoremap <buffer> <silent> \cd :call C_InsertDateAndTime('d')
nnoremap <buffer> <silent> \co :call C_CommentCode("a"):nohlsearch
nnoremap <buffer> <silent> \cc :call C_CodeComment("a","no"):nohlsearchj
nnoremap <buffer> <silent> \c* :call C_CodeComment("a","yes"):nohlsearchj
nnoremap <buffer> <silent> \cj :call C_AdjustLineEndComm("a")
nnoremap <buffer> <silent> \cl :call C_LineEndComment()
map <buffer> <silent> \hm :call C_Help("m")
map <buffer> <silent> \hp :call C_HelpCsupport()
map <buffer> <silent> \ro :call C_Toggle_Gvim_Xterm()
map <buffer> <silent> \rx :call C_XtermSize()
vmap <buffer> <silent> \rh :call C_Hardcopy("v")
map <buffer> <silent> \rs :call C_Settings()
omap <buffer> <silent> \rh :call C_Hardcopy("n")
map <buffer> <silent> \rd :call C_Indent()
map <buffer> <silent> \rpa :call C_SplintArguments()
map <buffer> <silent> \rp :call C_SplintCheck():call C_HlMessage()
map <buffer> <silent> \rma :call C_MakeArguments()
map <buffer> <silent> \rm :call C_Make()
map <buffer> <silent> \ra :call C_Arguments()
map <buffer> <silent> \rr :call C_Run()
map <buffer> <silent> \rl :call C_Link():call C_HlMessage()
map <buffer> <silent> \rc :call C_Compile():call C_HlMessage()
vnoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points", "v")
onoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points")
vnoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch", "v")
onoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch")
vnoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch", "v")
onoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch")
noremap <buffer> <silent> \+ec :call C_InsertTemplate("cpp.error-class")
noremap <buffer> <silent> \+tf :call C_InsertTemplate("cpp.template-function")
noremap <buffer> <silent> \+tai :call C_InsertTemplate("cpp.template-accessor-implementation")
noremap <buffer> <silent> \+tmi :call C_InsertTemplate("cpp.template-method-implementation")
noremap <buffer> <silent> \+tcni :call C_InsertTemplate("cpp.template-class-using-new-implementation")
noremap <buffer> <silent> \+tci :call C_InsertTemplate("cpp.template-class-implementation")
noremap <buffer> <silent> \+tcn :call C_InsertTemplate("cpp.template-class-using-new-definition")
noremap <buffer> <silent> \+tc :call C_InsertTemplate("cpp.template-class-definition")
noremap <buffer> <silent> \+ai :call C_InsertTemplate("cpp.accessor-implementation")
noremap <buffer> <silent> \+mi :call C_InsertTemplate("cpp.method-implementation")
noremap <buffer> <silent> \+cni :call C_InsertTemplate("cpp.class-using-new-implementation")
noremap <buffer> <silent> \+ci :call C_InsertTemplate("cpp.class-implementation")
noremap <buffer> <silent> \+cn :call C_InsertTemplate("cpp.class-using-new-definition")
noremap <buffer> <silent> \+c :call C_InsertTemplate("cpp.class-definition")
noremap <buffer> <silent> \+co :call C_InsertTemplate("cpp.cout")
noremap <buffer> \nts :CStyle 
noremap <buffer> <silent> \ntr :call C_RereadTemplates()
noremap <buffer> <silent> \ntg :call C_EditTemplates("global")
noremap <buffer> <silent> \ntl :call C_EditTemplates("local")
noremap <buffer> <silent> \ns :call C_ProtoShow()
noremap <buffer> <silent> \nc :call C_ProtoClear()
noremap <buffer> <silent> \ni :call C_ProtoInsert()
vnoremap <buffer> <silent> \np :call C_ProtoPick("v")
onoremap <buffer> <silent> \np :call C_ProtoPick("n")
noremap <buffer> <silent> \ne :call C_CodeSnippet("e")
vnoremap <buffer> <silent> \nw :call C_CodeSnippet("wv")
onoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
noremap <buffer> <silent> \nr :call C_CodeSnippet("r")
vnoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file", "v")
onoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file")
vnoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file", "v")
onoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file")
vnoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert", "v")
onoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert")
vnoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof", "v")
onoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof")
noremap <buffer> <silent> \ima :call C_InsertTemplate("idioms.malloc")
noremap <buffer> <silent> \ica :call C_InsertTemplate("idioms.calloc")
noremap <buffer> <silent> \isc :call C_InsertTemplate("idioms.scanf")
noremap <buffer> <silent> \ip :call C_InsertTemplate("idioms.printf")
vnoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union" , "v")
onoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union")
vnoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct", "v")
onoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct")
vnoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum"  , "v")
onoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum")
vnoremap <buffer> <silent> \in :call C_CodeFor("down", "v")
onoremap <buffer> <silent> \in :call C_CodeFor("down", "a")
vnoremap <buffer> <silent> \i0 :call C_CodeFor("up"  , "v")
onoremap <buffer> <silent> \i0 :call C_CodeFor("up"  , "a")
vnoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main", "v")
onoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main")
vnoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static", "v")
onoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static")
vnoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function", "v")
onoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function")
noremap <buffer> <silent> \pp :call C_InsertTemplate("preprocessor.pragma")
noremap <buffer> <silent> \pl :call C_InsertTemplate("preprocessor.line")
noremap <buffer> <silent> \pe :call C_InsertTemplate("preprocessor.error")
noremap <buffer> <silent> \pr0 :call C_PPIf0Remove()
vnoremap <buffer> <silent> \pi0 :call C_PPIf0("v")
onoremap <buffer> <silent> \pi0 :call C_PPIf0("a")2ji
vnoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif", "v")
vnoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif", "v")
vnoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif", "v")
vnoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif", "v")
onoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif")
onoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif")
onoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif")
onoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif")
noremap <buffer> <silent> \pu :call C_InsertTemplate("preprocessor.undefine")
noremap <buffer> <silent> \pd :call C_InsertTemplate("preprocessor.define")
noremap <buffer> <silent> \p" :call C_InsertTemplate("preprocessor.include-local")
noremap <buffer> <silent> \p< :call C_InsertTemplate("preprocessor.include-global")
noremap <buffer> \+pc :IncludeCppCLibrary 
noremap <buffer> \+ps :IncludeCppLibrary 
noremap <buffer> \pc :IncludeC99Library 
noremap <buffer> \ps :IncludeStdLibrary 
vnoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block", "v")
onoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block")
vnoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block", "v")
onoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block")
noremap <buffer> <silent> \sc :call C_InsertTemplate("statements.case")
vnoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch", "v")
onoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch")
vnoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block", "v")
onoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block")
noremap <buffer> <silent> \sw :call C_InsertTemplate("statements.while")
vnoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block", "v")
onoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block")
vnoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else", "v")
onoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else")
vnoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else", "v")
onoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else")
vnoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block", "v")
onoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block")
noremap <buffer> <silent> \si :call C_InsertTemplate("statements.if")
vnoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block", "v")
onoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block")
noremap <buffer> <silent> \sf :call C_InsertTemplate("statements.for")
vnoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while", "v")
onoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while")
noremap <buffer> \csc :SpecialComment 
noremap <buffer> \ckc :KeywordComment 
noremap <buffer> \chs :HFileSection 
noremap <buffer> \ccs :CFileSection 
vnoremap <buffer> <silent> \ct s:call C_InsertDateAndTime('dt')a
onoremap <buffer> <silent> \ct :call C_InsertDateAndTime('dt')
vnoremap <buffer> <silent> \cd s:call C_InsertDateAndTime('d')a
onoremap <buffer> <silent> \cd :call C_InsertDateAndTime('d')
noremap <buffer> <silent> \cfdh :call C_InsertTemplate("comment.file-description-header")
noremap <buffer> <silent> \cfdi :call C_InsertTemplate("comment.file-description")
noremap <buffer> <silent> \ccl :call C_InsertTemplate("comment.class")
noremap <buffer> <silent> \cme :call C_InsertTemplate("comment.method")
noremap <buffer> <silent> \cfu :call C_InsertTemplate("comment.function")
noremap <buffer> <silent> \cfr :call C_InsertTemplate("comment.frame")
vnoremap <buffer> <silent> \co :call C_CommentCode("v"):nohlsearch
onoremap <buffer> <silent> \co :call C_CommentCode("a"):nohlsearch
vnoremap <buffer> <silent> \cc :call C_CodeComment("v","no"):nohlsearchj
onoremap <buffer> <silent> \cc :call C_CodeComment("a","no"):nohlsearchj
vnoremap <buffer> <silent> \c* :call C_CodeComment("v","yes"):nohlsearchj
onoremap <buffer> <silent> \c* :call C_CodeComment("a","yes"):nohlsearchj
noremap <buffer> <silent> \cs :call C_GetLineEndCommCol()
vnoremap <buffer> <silent> \cj :call C_AdjustLineEndComm("v")
onoremap <buffer> <silent> \cj :call C_AdjustLineEndComm("a")
vnoremap <buffer> <silent> \cl :call C_MultiLineEndComments()a
onoremap <buffer> <silent> \cl :call C_LineEndComment()
vnoremap <buffer> { S{}Pk=iB
map <buffer> <silent> <S-F9> :call C_Arguments()
map <buffer> <silent> <C-F9> :call C_Run()
map <buffer> <silent> <F9> :call C_Link():call C_HlMessage()
map <buffer> <silent> <M-F9> :call C_Compile():call C_HlMessage()
imap <buffer> <silent> <NL> =C_JumpCtrlJ()
inoremap <buffer> /* /*/kA 
inoremap <buffer> /* /*  */<Left><Left><Left>
imap <buffer> <silent> \hm :call C_Help("m")
imap <buffer> <silent> \hp :call C_HelpCsupport()
imap <buffer> <silent> \ro :call C_Toggle_Gvim_Xterm()
imap <buffer> <silent> \rx :call C_XtermSize()
imap <buffer> <silent> \rs :call C_Settings()
imap <buffer> <silent> \rh :call C_Hardcopy("n")
imap <buffer> <silent> \rd :call C_Indent()
imap <buffer> <silent> \rpa :call C_SplintArguments()
imap <buffer> <silent> \rp :call C_SplintCheck():call C_HlMessage()
imap <buffer> <silent> \rma :call C_MakeArguments()
imap <buffer> <silent> \rm :call C_Make()
imap <buffer> <silent> \ra :call C_Arguments()
imap <buffer> <silent> \rr :call C_Run()
imap <buffer> <silent> \rl :call C_Link():call C_HlMessage()
imap <buffer> <silent> \rc :call C_Compile():call C_HlMessage()
inoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points")
inoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch")
inoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch")
inoremap <buffer> <silent> \+ec :call C_InsertTemplate("cpp.error-class")
inoremap <buffer> <silent> \+tf :call C_InsertTemplate("cpp.template-function")
inoremap <buffer> <silent> \+tai :call C_InsertTemplate("cpp.template-accessor-implementation")
inoremap <buffer> <silent> \+tmi :call C_InsertTemplate("cpp.template-method-implementation")
inoremap <buffer> <silent> \+tcni :call C_InsertTemplate("cpp.template-class-using-new-implementation")
inoremap <buffer> <silent> \+tci :call C_InsertTemplate("cpp.template-class-implementation")
inoremap <buffer> <silent> \+tcn :call C_InsertTemplate("cpp.template-class-using-new-definition")
inoremap <buffer> <silent> \+tc :call C_InsertTemplate("cpp.template-class-definition")
inoremap <buffer> <silent> \+ai :call C_InsertTemplate("cpp.accessor-implementation")
inoremap <buffer> <silent> \+mi :call C_InsertTemplate("cpp.method-implementation")
inoremap <buffer> <silent> \+cni :call C_InsertTemplate("cpp.class-using-new-implementation")
inoremap <buffer> <silent> \+ci :call C_InsertTemplate("cpp.class-implementation")
inoremap <buffer> <silent> \+cn :call C_InsertTemplate("cpp.class-using-new-definition")
inoremap <buffer> <silent> \+c :call C_InsertTemplate("cpp.class-definition")
inoremap <buffer> <silent> \+co :call C_InsertTemplate("cpp.cout")
inoremap <buffer> <silent> \ns :call C_ProtoShow()
inoremap <buffer> <silent> \nc :call C_ProtoClear()
inoremap <buffer> <silent> \ni :call C_ProtoInsert()
inoremap <buffer> <silent> \np :call C_ProtoPick("n")
inoremap <buffer> <silent> \ne :call C_CodeSnippet("e")
inoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
inoremap <buffer> <silent> \nr :call C_CodeSnippet("r")
inoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file")
inoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file")
inoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert")
inoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof")
inoremap <buffer> <silent> \ima :call C_InsertTemplate("idioms.malloc")
inoremap <buffer> <silent> \ica :call C_InsertTemplate("idioms.calloc")
inoremap <buffer> <silent> \isc :call C_InsertTemplate("idioms.scanf")
inoremap <buffer> <silent> \ip :call C_InsertTemplate("idioms.printf")
inoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union")
inoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct")
inoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum")
inoremap <buffer> <silent> \in :call C_CodeFor("down", "a")i
inoremap <buffer> <silent> \i0 :call C_CodeFor("up"  , "a")i
inoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main")
inoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static")
inoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function")
inoremap <buffer> <silent> \pp :call C_InsertTemplate("preprocessor.pragma")
inoremap <buffer> <silent> \pl :call C_InsertTemplate("preprocessor.line")
inoremap <buffer> <silent> \pe :call C_InsertTemplate("preprocessor.error")
inoremap <buffer> <silent> \pr0 :call C_PPIf0Remove()
inoremap <buffer> <silent> \pi0 :call C_PPIf0("a")2ji
inoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif")
inoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif")
inoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif")
inoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif")
inoremap <buffer> <silent> \pu :call C_InsertTemplate("preprocessor.undefine")
inoremap <buffer> <silent> \pd :call C_InsertTemplate("preprocessor.define")
inoremap <buffer> <silent> \p" :call C_InsertTemplate("preprocessor.include-local")
inoremap <buffer> <silent> \p< :call C_InsertTemplate("preprocessor.include-global")
inoremap <buffer> \+pc :IncludeCppC9Library 
inoremap <buffer> \+ps :IncludeCppLibrary 
inoremap <buffer> \pc :IncludeC99Library 
inoremap <buffer> \ps :IncludeStdLibrary 
inoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block")
inoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block")
inoremap <buffer> <silent> \sc :call C_InsertTemplate("statements.case")
inoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch")
inoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block")
inoremap <buffer> <silent> \sw :call C_InsertTemplate("statements.while")
inoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block")
inoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else")
inoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else")
inoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block")
inoremap <buffer> <silent> \si :call C_InsertTemplate("statements.if")
inoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block")
inoremap <buffer> <silent> \sf :call C_InsertTemplate("statements.for")
inoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while")
inoremap <buffer> \csc :SpecialComment 
inoremap <buffer> \ckc :KeywordComment 
inoremap <buffer> \chs :HFileSection 
inoremap <buffer> \ccs :CFileSection 
inoremap <buffer> <silent> \ct :call C_InsertDateAndTime('dt')a
inoremap <buffer> <silent> \cd :call C_InsertDateAndTime('d')a
inoremap <buffer> <silent> \cfdh :call C_InsertTemplate("comment.file-description-header")
inoremap <buffer> <silent> \cfdi :call C_InsertTemplate("comment.file-description")
inoremap <buffer> <silent> \ccl :call C_InsertTemplate("comment.class")
inoremap <buffer> <silent> \cme :call C_InsertTemplate("comment.method")
inoremap <buffer> <silent> \cfu :call C_InsertTemplate("comment.function")
inoremap <buffer> <silent> \cfr :call C_InsertTemplate("comment.frame")
inoremap <buffer> <silent> \cj :call C_AdjustLineEndComm("a")a
inoremap <buffer> <silent> \cl :call C_LineEndComment()
inoremap <buffer> { {}O
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=~/.vim/bundle/c/c-support/wordlists/c-c++-keywords.list,~/.vim/bundle/c/c-support/wordlists/k+r.list,~/.vim/bundle/c/c-support/wordlists/stl_index.list
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'c'
setlocal filetype=c
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=syntax
setlocal foldmethod=syntax
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=MyFoldText()
setlocal formatexpr=
setlocal formatoptions=ncroql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=omni#cpp#complete#Main
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'c'
setlocal syntax=c
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
let s:l = 289 - ((0 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
289
normal! 0
tabedit src/ndpi_if.h
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <silent> <S-F9> :call C_Arguments()
imap <buffer> <silent> <C-F9> :call C_Run()
imap <buffer> <silent> <F9> :call C_Link():call C_HlMessage()
imap <buffer> <silent> <M-F9> :call C_Compile():call C_HlMessage()
nmap <buffer> <silent> <NL> i=C_JumpCtrlJ()
vnoremap <buffer> /* s/*  */<Left><Left><Left>p
nnoremap <buffer> <silent> \cl :call C_LineEndComment()
nnoremap <buffer> <silent> \cj :call C_AdjustLineEndComm("a")
nnoremap <buffer> <silent> \c* :call C_CodeComment("a","yes"):nohlsearchj
nnoremap <buffer> <silent> \cc :call C_CodeComment("a","no"):nohlsearchj
nnoremap <buffer> <silent> \co :call C_CommentCode("a"):nohlsearch
nnoremap <buffer> <silent> \cd :call C_InsertDateAndTime('d')
nnoremap <buffer> <silent> \ct :call C_InsertDateAndTime('dt')
nnoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while")
nnoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block")
nnoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block")
nnoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else")
nnoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else")
nnoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block")
nnoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block")
nnoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch")
nnoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block")
nnoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block")
nnoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif")
nnoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif")
nnoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif")
nnoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif")
nnoremap <buffer> <silent> \pi0 :call C_PPIf0("a")2ji
nnoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function")
nnoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static")
nnoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main")
nnoremap <buffer> <silent> \i0 :call C_CodeFor("up"  , "a")
nnoremap <buffer> <silent> \in :call C_CodeFor("down", "a")
nnoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum")
nnoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct")
nnoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union")
nnoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof")
nnoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert")
nnoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file")
nnoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file")
nnoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
nnoremap <buffer> <silent> \np :call C_ProtoPick("n")
nnoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch")
nnoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch")
nnoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points")
nmap <buffer> <silent> \rh :call C_Hardcopy("n")
map <buffer> <silent> \hm :call C_Help("m")
map <buffer> <silent> \hp :call C_HelpCsupport()
map <buffer> <silent> \ro :call C_Toggle_Gvim_Xterm()
map <buffer> <silent> \rx :call C_XtermSize()
vmap <buffer> <silent> \rh :call C_Hardcopy("v")
map <buffer> <silent> \rs :call C_Settings()
omap <buffer> <silent> \rh :call C_Hardcopy("n")
map <buffer> <silent> \rd :call C_Indent()
map <buffer> <silent> \rpa :call C_SplintArguments()
map <buffer> <silent> \rp :call C_SplintCheck():call C_HlMessage()
map <buffer> <silent> \rma :call C_MakeArguments()
map <buffer> <silent> \rm :call C_Make()
map <buffer> <silent> \ra :call C_Arguments()
map <buffer> <silent> \rr :call C_Run()
map <buffer> <silent> \rl :call C_Link():call C_HlMessage()
map <buffer> <silent> \rc :call C_Compile():call C_HlMessage()
vnoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points", "v")
onoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points")
vnoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch", "v")
onoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch")
vnoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch", "v")
onoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch")
noremap <buffer> <silent> \+ec :call C_InsertTemplate("cpp.error-class")
noremap <buffer> <silent> \+tf :call C_InsertTemplate("cpp.template-function")
noremap <buffer> <silent> \+tai :call C_InsertTemplate("cpp.template-accessor-implementation")
noremap <buffer> <silent> \+tmi :call C_InsertTemplate("cpp.template-method-implementation")
noremap <buffer> <silent> \+tcni :call C_InsertTemplate("cpp.template-class-using-new-implementation")
noremap <buffer> <silent> \+tci :call C_InsertTemplate("cpp.template-class-implementation")
noremap <buffer> <silent> \+tcn :call C_InsertTemplate("cpp.template-class-using-new-definition")
noremap <buffer> <silent> \+tc :call C_InsertTemplate("cpp.template-class-definition")
noremap <buffer> <silent> \+ai :call C_InsertTemplate("cpp.accessor-implementation")
noremap <buffer> <silent> \+mi :call C_InsertTemplate("cpp.method-implementation")
noremap <buffer> <silent> \+cni :call C_InsertTemplate("cpp.class-using-new-implementation")
noremap <buffer> <silent> \+ci :call C_InsertTemplate("cpp.class-implementation")
noremap <buffer> <silent> \+cn :call C_InsertTemplate("cpp.class-using-new-definition")
noremap <buffer> <silent> \+c :call C_InsertTemplate("cpp.class-definition")
noremap <buffer> <silent> \+co :call C_InsertTemplate("cpp.cout")
noremap <buffer> \nts :CStyle 
noremap <buffer> <silent> \ntr :call C_RereadTemplates()
noremap <buffer> <silent> \ntg :call C_EditTemplates("global")
noremap <buffer> <silent> \ntl :call C_EditTemplates("local")
noremap <buffer> <silent> \ns :call C_ProtoShow()
noremap <buffer> <silent> \nc :call C_ProtoClear()
noremap <buffer> <silent> \ni :call C_ProtoInsert()
vnoremap <buffer> <silent> \np :call C_ProtoPick("v")
onoremap <buffer> <silent> \np :call C_ProtoPick("n")
noremap <buffer> <silent> \ne :call C_CodeSnippet("e")
vnoremap <buffer> <silent> \nw :call C_CodeSnippet("wv")
onoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
noremap <buffer> <silent> \nr :call C_CodeSnippet("r")
vnoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file", "v")
onoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file")
vnoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file", "v")
onoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file")
vnoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert", "v")
onoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert")
vnoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof", "v")
onoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof")
noremap <buffer> <silent> \ima :call C_InsertTemplate("idioms.malloc")
noremap <buffer> <silent> \ica :call C_InsertTemplate("idioms.calloc")
noremap <buffer> <silent> \isc :call C_InsertTemplate("idioms.scanf")
noremap <buffer> <silent> \ip :call C_InsertTemplate("idioms.printf")
vnoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union" , "v")
onoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union")
vnoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct", "v")
onoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct")
vnoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum"  , "v")
onoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum")
vnoremap <buffer> <silent> \in :call C_CodeFor("down", "v")
onoremap <buffer> <silent> \in :call C_CodeFor("down", "a")
vnoremap <buffer> <silent> \i0 :call C_CodeFor("up"  , "v")
onoremap <buffer> <silent> \i0 :call C_CodeFor("up"  , "a")
vnoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main", "v")
onoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main")
vnoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static", "v")
onoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static")
vnoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function", "v")
onoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function")
noremap <buffer> <silent> \pp :call C_InsertTemplate("preprocessor.pragma")
noremap <buffer> <silent> \pl :call C_InsertTemplate("preprocessor.line")
noremap <buffer> <silent> \pe :call C_InsertTemplate("preprocessor.error")
noremap <buffer> <silent> \pr0 :call C_PPIf0Remove()
vnoremap <buffer> <silent> \pi0 :call C_PPIf0("v")
onoremap <buffer> <silent> \pi0 :call C_PPIf0("a")2ji
vnoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif", "v")
vnoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif", "v")
vnoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif", "v")
vnoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif", "v")
onoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif")
onoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif")
onoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif")
onoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif")
noremap <buffer> <silent> \pu :call C_InsertTemplate("preprocessor.undefine")
noremap <buffer> <silent> \pd :call C_InsertTemplate("preprocessor.define")
noremap <buffer> <silent> \p" :call C_InsertTemplate("preprocessor.include-local")
noremap <buffer> <silent> \p< :call C_InsertTemplate("preprocessor.include-global")
noremap <buffer> \+pc :IncludeCppCLibrary 
noremap <buffer> \+ps :IncludeCppLibrary 
noremap <buffer> \pc :IncludeC99Library 
noremap <buffer> \ps :IncludeStdLibrary 
vnoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block", "v")
onoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block")
vnoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block", "v")
onoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block")
noremap <buffer> <silent> \sc :call C_InsertTemplate("statements.case")
vnoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch", "v")
onoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch")
vnoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block", "v")
onoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block")
noremap <buffer> <silent> \sw :call C_InsertTemplate("statements.while")
vnoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block", "v")
onoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block")
vnoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else", "v")
onoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else")
vnoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else", "v")
onoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else")
vnoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block", "v")
onoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block")
noremap <buffer> <silent> \si :call C_InsertTemplate("statements.if")
vnoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block", "v")
onoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block")
noremap <buffer> <silent> \sf :call C_InsertTemplate("statements.for")
vnoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while", "v")
onoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while")
noremap <buffer> \csc :SpecialComment 
noremap <buffer> \ckc :KeywordComment 
noremap <buffer> \chs :HFileSection 
noremap <buffer> \ccs :CFileSection 
vnoremap <buffer> <silent> \ct s:call C_InsertDateAndTime('dt')a
onoremap <buffer> <silent> \ct :call C_InsertDateAndTime('dt')
vnoremap <buffer> <silent> \cd s:call C_InsertDateAndTime('d')a
onoremap <buffer> <silent> \cd :call C_InsertDateAndTime('d')
noremap <buffer> <silent> \cfdh :call C_InsertTemplate("comment.file-description-header")
noremap <buffer> <silent> \cfdi :call C_InsertTemplate("comment.file-description")
noremap <buffer> <silent> \ccl :call C_InsertTemplate("comment.class")
noremap <buffer> <silent> \cme :call C_InsertTemplate("comment.method")
noremap <buffer> <silent> \cfu :call C_InsertTemplate("comment.function")
noremap <buffer> <silent> \cfr :call C_InsertTemplate("comment.frame")
vnoremap <buffer> <silent> \co :call C_CommentCode("v"):nohlsearch
onoremap <buffer> <silent> \co :call C_CommentCode("a"):nohlsearch
vnoremap <buffer> <silent> \cc :call C_CodeComment("v","no"):nohlsearchj
onoremap <buffer> <silent> \cc :call C_CodeComment("a","no"):nohlsearchj
vnoremap <buffer> <silent> \c* :call C_CodeComment("v","yes"):nohlsearchj
onoremap <buffer> <silent> \c* :call C_CodeComment("a","yes"):nohlsearchj
noremap <buffer> <silent> \cs :call C_GetLineEndCommCol()
vnoremap <buffer> <silent> \cj :call C_AdjustLineEndComm("v")
onoremap <buffer> <silent> \cj :call C_AdjustLineEndComm("a")
vnoremap <buffer> <silent> \cl :call C_MultiLineEndComments()a
onoremap <buffer> <silent> \cl :call C_LineEndComment()
vnoremap <buffer> { S{}Pk=iB
map <buffer> <silent> <S-F9> :call C_Arguments()
map <buffer> <silent> <C-F9> :call C_Run()
map <buffer> <silent> <F9> :call C_Link():call C_HlMessage()
map <buffer> <silent> <M-F9> :call C_Compile():call C_HlMessage()
imap <buffer> <silent> <NL> =C_JumpCtrlJ()
inoremap <buffer> /* /*/kA 
inoremap <buffer> /* /*  */<Left><Left><Left>
imap <buffer> <silent> \hm :call C_Help("m")
imap <buffer> <silent> \hp :call C_HelpCsupport()
imap <buffer> <silent> \ro :call C_Toggle_Gvim_Xterm()
imap <buffer> <silent> \rx :call C_XtermSize()
imap <buffer> <silent> \rs :call C_Settings()
imap <buffer> <silent> \rh :call C_Hardcopy("n")
imap <buffer> <silent> \rd :call C_Indent()
imap <buffer> <silent> \rpa :call C_SplintArguments()
imap <buffer> <silent> \rp :call C_SplintCheck():call C_HlMessage()
imap <buffer> <silent> \rma :call C_MakeArguments()
imap <buffer> <silent> \rm :call C_Make()
imap <buffer> <silent> \ra :call C_Arguments()
imap <buffer> <silent> \rr :call C_Run()
imap <buffer> <silent> \rl :call C_Link():call C_HlMessage()
imap <buffer> <silent> \rc :call C_Compile():call C_HlMessage()
inoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points")
inoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch")
inoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch")
inoremap <buffer> <silent> \+ec :call C_InsertTemplate("cpp.error-class")
inoremap <buffer> <silent> \+tf :call C_InsertTemplate("cpp.template-function")
inoremap <buffer> <silent> \+tai :call C_InsertTemplate("cpp.template-accessor-implementation")
inoremap <buffer> <silent> \+tmi :call C_InsertTemplate("cpp.template-method-implementation")
inoremap <buffer> <silent> \+tcni :call C_InsertTemplate("cpp.template-class-using-new-implementation")
inoremap <buffer> <silent> \+tci :call C_InsertTemplate("cpp.template-class-implementation")
inoremap <buffer> <silent> \+tcn :call C_InsertTemplate("cpp.template-class-using-new-definition")
inoremap <buffer> <silent> \+tc :call C_InsertTemplate("cpp.template-class-definition")
inoremap <buffer> <silent> \+ai :call C_InsertTemplate("cpp.accessor-implementation")
inoremap <buffer> <silent> \+mi :call C_InsertTemplate("cpp.method-implementation")
inoremap <buffer> <silent> \+cni :call C_InsertTemplate("cpp.class-using-new-implementation")
inoremap <buffer> <silent> \+ci :call C_InsertTemplate("cpp.class-implementation")
inoremap <buffer> <silent> \+cn :call C_InsertTemplate("cpp.class-using-new-definition")
inoremap <buffer> <silent> \+c :call C_InsertTemplate("cpp.class-definition")
inoremap <buffer> <silent> \+co :call C_InsertTemplate("cpp.cout")
inoremap <buffer> <silent> \ns :call C_ProtoShow()
inoremap <buffer> <silent> \nc :call C_ProtoClear()
inoremap <buffer> <silent> \ni :call C_ProtoInsert()
inoremap <buffer> <silent> \np :call C_ProtoPick("n")
inoremap <buffer> <silent> \ne :call C_CodeSnippet("e")
inoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
inoremap <buffer> <silent> \nr :call C_CodeSnippet("r")
inoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file")
inoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file")
inoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert")
inoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof")
inoremap <buffer> <silent> \ima :call C_InsertTemplate("idioms.malloc")
inoremap <buffer> <silent> \ica :call C_InsertTemplate("idioms.calloc")
inoremap <buffer> <silent> \isc :call C_InsertTemplate("idioms.scanf")
inoremap <buffer> <silent> \ip :call C_InsertTemplate("idioms.printf")
inoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union")
inoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct")
inoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum")
inoremap <buffer> <silent> \in :call C_CodeFor("down", "a")i
inoremap <buffer> <silent> \i0 :call C_CodeFor("up"  , "a")i
inoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main")
inoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static")
inoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function")
inoremap <buffer> <silent> \pp :call C_InsertTemplate("preprocessor.pragma")
inoremap <buffer> <silent> \pl :call C_InsertTemplate("preprocessor.line")
inoremap <buffer> <silent> \pe :call C_InsertTemplate("preprocessor.error")
inoremap <buffer> <silent> \pr0 :call C_PPIf0Remove()
inoremap <buffer> <silent> \pi0 :call C_PPIf0("a")2ji
inoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif")
inoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif")
inoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif")
inoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif")
inoremap <buffer> <silent> \pu :call C_InsertTemplate("preprocessor.undefine")
inoremap <buffer> <silent> \pd :call C_InsertTemplate("preprocessor.define")
inoremap <buffer> <silent> \p" :call C_InsertTemplate("preprocessor.include-local")
inoremap <buffer> <silent> \p< :call C_InsertTemplate("preprocessor.include-global")
inoremap <buffer> \+pc :IncludeCppC9Library 
inoremap <buffer> \+ps :IncludeCppLibrary 
inoremap <buffer> \pc :IncludeC99Library 
inoremap <buffer> \ps :IncludeStdLibrary 
inoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block")
inoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block")
inoremap <buffer> <silent> \sc :call C_InsertTemplate("statements.case")
inoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch")
inoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block")
inoremap <buffer> <silent> \sw :call C_InsertTemplate("statements.while")
inoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block")
inoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else")
inoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else")
inoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block")
inoremap <buffer> <silent> \si :call C_InsertTemplate("statements.if")
inoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block")
inoremap <buffer> <silent> \sf :call C_InsertTemplate("statements.for")
inoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while")
inoremap <buffer> \csc :SpecialComment 
inoremap <buffer> \ckc :KeywordComment 
inoremap <buffer> \chs :HFileSection 
inoremap <buffer> \ccs :CFileSection 
inoremap <buffer> <silent> \ct :call C_InsertDateAndTime('dt')a
inoremap <buffer> <silent> \cd :call C_InsertDateAndTime('d')a
inoremap <buffer> <silent> \cfdh :call C_InsertTemplate("comment.file-description-header")
inoremap <buffer> <silent> \cfdi :call C_InsertTemplate("comment.file-description")
inoremap <buffer> <silent> \ccl :call C_InsertTemplate("comment.class")
inoremap <buffer> <silent> \cme :call C_InsertTemplate("comment.method")
inoremap <buffer> <silent> \cfu :call C_InsertTemplate("comment.function")
inoremap <buffer> <silent> \cfr :call C_InsertTemplate("comment.frame")
inoremap <buffer> <silent> \cj :call C_AdjustLineEndComm("a")a
inoremap <buffer> <silent> \cl :call C_LineEndComment()
inoremap <buffer> { {}O
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=~/.vim/bundle/c/c-support/wordlists/c-c++-keywords.list,~/.vim/bundle/c/c-support/wordlists/k+r.list,~/.vim/bundle/c/c-support/wordlists/stl_index.list
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'cpp'
setlocal filetype=cpp
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=syntax
setlocal foldmethod=syntax
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=MyFoldText()
setlocal formatexpr=
setlocal formatoptions=ncroql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=omni#cpp#complete#Main
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'cpp'
setlocal syntax=cpp
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
29
normal! zo
37
normal! zo
44
normal! zo
58
normal! zo
64
normal! zo
let s:l = 83 - ((28 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
83
normal! 040|
tabedit src/pfdpi.c
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <silent> <S-F9> :call C_Arguments()
imap <buffer> <silent> <C-F9> :call C_Run()
imap <buffer> <silent> <F9> :call C_Link():call C_HlMessage()
imap <buffer> <silent> <M-F9> :call C_Compile():call C_HlMessage()
nmap <buffer> <silent> <NL> i=C_JumpCtrlJ()
vnoremap <buffer> /* s/*  */<Left><Left><Left>p
nnoremap <buffer> <silent> \cl :call C_LineEndComment()
nnoremap <buffer> <silent> \cj :call C_AdjustLineEndComm("a")
nnoremap <buffer> <silent> \c* :call C_CodeComment("a","yes"):nohlsearchj
nnoremap <buffer> <silent> \cc :call C_CodeComment("a","no"):nohlsearchj
nnoremap <buffer> <silent> \co :call C_CommentCode("a"):nohlsearch
nnoremap <buffer> <silent> \cd :call C_InsertDateAndTime('d')
nnoremap <buffer> <silent> \ct :call C_InsertDateAndTime('dt')
nnoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while")
nnoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block")
nnoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block")
nnoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else")
nnoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else")
nnoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block")
nnoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block")
nnoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch")
nnoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block")
nnoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block")
nnoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif")
nnoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif")
nnoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif")
nnoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif")
nnoremap <buffer> <silent> \pi0 :call C_PPIf0("a")2ji
nnoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function")
nnoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static")
nnoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main")
nnoremap <buffer> <silent> \i0 :call C_CodeFor("up"  , "a")
nnoremap <buffer> <silent> \in :call C_CodeFor("down", "a")
nnoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum")
nnoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct")
nnoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union")
nnoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof")
nnoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert")
nnoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file")
nnoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file")
nnoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
nnoremap <buffer> <silent> \np :call C_ProtoPick("n")
nnoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch")
nnoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch")
nnoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points")
nmap <buffer> <silent> \rh :call C_Hardcopy("n")
map <buffer> <silent> \hm :call C_Help("m")
map <buffer> <silent> \hp :call C_HelpCsupport()
map <buffer> <silent> \ro :call C_Toggle_Gvim_Xterm()
map <buffer> <silent> \rx :call C_XtermSize()
vmap <buffer> <silent> \rh :call C_Hardcopy("v")
map <buffer> <silent> \rs :call C_Settings()
omap <buffer> <silent> \rh :call C_Hardcopy("n")
map <buffer> <silent> \rd :call C_Indent()
map <buffer> <silent> \rpa :call C_SplintArguments()
map <buffer> <silent> \rp :call C_SplintCheck():call C_HlMessage()
map <buffer> <silent> \rma :call C_MakeArguments()
map <buffer> <silent> \rm :call C_Make()
map <buffer> <silent> \ra :call C_Arguments()
map <buffer> <silent> \rr :call C_Run()
map <buffer> <silent> \rl :call C_Link():call C_HlMessage()
map <buffer> <silent> \rc :call C_Compile():call C_HlMessage()
vnoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points", "v")
onoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points")
vnoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch", "v")
onoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch")
vnoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch", "v")
onoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch")
noremap <buffer> <silent> \+ec :call C_InsertTemplate("cpp.error-class")
noremap <buffer> <silent> \+tf :call C_InsertTemplate("cpp.template-function")
noremap <buffer> <silent> \+tai :call C_InsertTemplate("cpp.template-accessor-implementation")
noremap <buffer> <silent> \+tmi :call C_InsertTemplate("cpp.template-method-implementation")
noremap <buffer> <silent> \+tcni :call C_InsertTemplate("cpp.template-class-using-new-implementation")
noremap <buffer> <silent> \+tci :call C_InsertTemplate("cpp.template-class-implementation")
noremap <buffer> <silent> \+tcn :call C_InsertTemplate("cpp.template-class-using-new-definition")
noremap <buffer> <silent> \+tc :call C_InsertTemplate("cpp.template-class-definition")
noremap <buffer> <silent> \+ai :call C_InsertTemplate("cpp.accessor-implementation")
noremap <buffer> <silent> \+mi :call C_InsertTemplate("cpp.method-implementation")
noremap <buffer> <silent> \+cni :call C_InsertTemplate("cpp.class-using-new-implementation")
noremap <buffer> <silent> \+ci :call C_InsertTemplate("cpp.class-implementation")
noremap <buffer> <silent> \+cn :call C_InsertTemplate("cpp.class-using-new-definition")
noremap <buffer> <silent> \+c :call C_InsertTemplate("cpp.class-definition")
noremap <buffer> <silent> \+co :call C_InsertTemplate("cpp.cout")
noremap <buffer> \nts :CStyle 
noremap <buffer> <silent> \ntr :call C_RereadTemplates()
noremap <buffer> <silent> \ntg :call C_EditTemplates("global")
noremap <buffer> <silent> \ntl :call C_EditTemplates("local")
noremap <buffer> <silent> \ns :call C_ProtoShow()
noremap <buffer> <silent> \nc :call C_ProtoClear()
noremap <buffer> <silent> \ni :call C_ProtoInsert()
vnoremap <buffer> <silent> \np :call C_ProtoPick("v")
onoremap <buffer> <silent> \np :call C_ProtoPick("n")
noremap <buffer> <silent> \ne :call C_CodeSnippet("e")
vnoremap <buffer> <silent> \nw :call C_CodeSnippet("wv")
onoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
noremap <buffer> <silent> \nr :call C_CodeSnippet("r")
vnoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file", "v")
onoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file")
vnoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file", "v")
onoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file")
vnoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert", "v")
onoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert")
vnoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof", "v")
onoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof")
noremap <buffer> <silent> \ima :call C_InsertTemplate("idioms.malloc")
noremap <buffer> <silent> \ica :call C_InsertTemplate("idioms.calloc")
noremap <buffer> <silent> \isc :call C_InsertTemplate("idioms.scanf")
noremap <buffer> <silent> \ip :call C_InsertTemplate("idioms.printf")
vnoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union" , "v")
onoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union")
vnoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct", "v")
onoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct")
vnoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum"  , "v")
onoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum")
vnoremap <buffer> <silent> \in :call C_CodeFor("down", "v")
onoremap <buffer> <silent> \in :call C_CodeFor("down", "a")
vnoremap <buffer> <silent> \i0 :call C_CodeFor("up"  , "v")
onoremap <buffer> <silent> \i0 :call C_CodeFor("up"  , "a")
vnoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main", "v")
onoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main")
vnoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static", "v")
onoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static")
vnoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function", "v")
onoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function")
noremap <buffer> <silent> \pp :call C_InsertTemplate("preprocessor.pragma")
noremap <buffer> <silent> \pl :call C_InsertTemplate("preprocessor.line")
noremap <buffer> <silent> \pe :call C_InsertTemplate("preprocessor.error")
noremap <buffer> <silent> \pr0 :call C_PPIf0Remove()
vnoremap <buffer> <silent> \pi0 :call C_PPIf0("v")
onoremap <buffer> <silent> \pi0 :call C_PPIf0("a")2ji
vnoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif", "v")
vnoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif", "v")
vnoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif", "v")
vnoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif", "v")
onoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif")
onoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif")
onoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif")
onoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif")
noremap <buffer> <silent> \pu :call C_InsertTemplate("preprocessor.undefine")
noremap <buffer> <silent> \pd :call C_InsertTemplate("preprocessor.define")
noremap <buffer> <silent> \p" :call C_InsertTemplate("preprocessor.include-local")
noremap <buffer> <silent> \p< :call C_InsertTemplate("preprocessor.include-global")
noremap <buffer> \+pc :IncludeCppCLibrary 
noremap <buffer> \+ps :IncludeCppLibrary 
noremap <buffer> \pc :IncludeC99Library 
noremap <buffer> \ps :IncludeStdLibrary 
vnoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block", "v")
onoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block")
vnoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block", "v")
onoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block")
noremap <buffer> <silent> \sc :call C_InsertTemplate("statements.case")
vnoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch", "v")
onoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch")
vnoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block", "v")
onoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block")
noremap <buffer> <silent> \sw :call C_InsertTemplate("statements.while")
vnoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block", "v")
onoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block")
vnoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else", "v")
onoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else")
vnoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else", "v")
onoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else")
vnoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block", "v")
onoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block")
noremap <buffer> <silent> \si :call C_InsertTemplate("statements.if")
vnoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block", "v")
onoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block")
noremap <buffer> <silent> \sf :call C_InsertTemplate("statements.for")
vnoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while", "v")
onoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while")
noremap <buffer> \csc :SpecialComment 
noremap <buffer> \ckc :KeywordComment 
noremap <buffer> \chs :HFileSection 
noremap <buffer> \ccs :CFileSection 
vnoremap <buffer> <silent> \ct s:call C_InsertDateAndTime('dt')a
onoremap <buffer> <silent> \ct :call C_InsertDateAndTime('dt')
vnoremap <buffer> <silent> \cd s:call C_InsertDateAndTime('d')a
onoremap <buffer> <silent> \cd :call C_InsertDateAndTime('d')
noremap <buffer> <silent> \cfdh :call C_InsertTemplate("comment.file-description-header")
noremap <buffer> <silent> \cfdi :call C_InsertTemplate("comment.file-description")
noremap <buffer> <silent> \ccl :call C_InsertTemplate("comment.class")
noremap <buffer> <silent> \cme :call C_InsertTemplate("comment.method")
noremap <buffer> <silent> \cfu :call C_InsertTemplate("comment.function")
noremap <buffer> <silent> \cfr :call C_InsertTemplate("comment.frame")
vnoremap <buffer> <silent> \co :call C_CommentCode("v"):nohlsearch
onoremap <buffer> <silent> \co :call C_CommentCode("a"):nohlsearch
vnoremap <buffer> <silent> \cc :call C_CodeComment("v","no"):nohlsearchj
onoremap <buffer> <silent> \cc :call C_CodeComment("a","no"):nohlsearchj
vnoremap <buffer> <silent> \c* :call C_CodeComment("v","yes"):nohlsearchj
onoremap <buffer> <silent> \c* :call C_CodeComment("a","yes"):nohlsearchj
noremap <buffer> <silent> \cs :call C_GetLineEndCommCol()
vnoremap <buffer> <silent> \cj :call C_AdjustLineEndComm("v")
onoremap <buffer> <silent> \cj :call C_AdjustLineEndComm("a")
vnoremap <buffer> <silent> \cl :call C_MultiLineEndComments()a
onoremap <buffer> <silent> \cl :call C_LineEndComment()
vnoremap <buffer> { S{}Pk=iB
map <buffer> <silent> <S-F9> :call C_Arguments()
map <buffer> <silent> <C-F9> :call C_Run()
map <buffer> <silent> <F9> :call C_Link():call C_HlMessage()
map <buffer> <silent> <M-F9> :call C_Compile():call C_HlMessage()
imap <buffer> <silent> <NL> =C_JumpCtrlJ()
inoremap <buffer> /* /*/kA 
inoremap <buffer> /* /*  */<Left><Left><Left>
imap <buffer> <silent> \hm :call C_Help("m")
imap <buffer> <silent> \hp :call C_HelpCsupport()
imap <buffer> <silent> \ro :call C_Toggle_Gvim_Xterm()
imap <buffer> <silent> \rx :call C_XtermSize()
imap <buffer> <silent> \rs :call C_Settings()
imap <buffer> <silent> \rh :call C_Hardcopy("n")
imap <buffer> <silent> \rd :call C_Indent()
imap <buffer> <silent> \rpa :call C_SplintArguments()
imap <buffer> <silent> \rp :call C_SplintCheck():call C_HlMessage()
imap <buffer> <silent> \rma :call C_MakeArguments()
imap <buffer> <silent> \rm :call C_Make()
imap <buffer> <silent> \ra :call C_Arguments()
imap <buffer> <silent> \rr :call C_Run()
imap <buffer> <silent> \rl :call C_Link():call C_HlMessage()
imap <buffer> <silent> \rc :call C_Compile():call C_HlMessage()
inoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points")
inoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch")
inoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch")
inoremap <buffer> <silent> \+ec :call C_InsertTemplate("cpp.error-class")
inoremap <buffer> <silent> \+tf :call C_InsertTemplate("cpp.template-function")
inoremap <buffer> <silent> \+tai :call C_InsertTemplate("cpp.template-accessor-implementation")
inoremap <buffer> <silent> \+tmi :call C_InsertTemplate("cpp.template-method-implementation")
inoremap <buffer> <silent> \+tcni :call C_InsertTemplate("cpp.template-class-using-new-implementation")
inoremap <buffer> <silent> \+tci :call C_InsertTemplate("cpp.template-class-implementation")
inoremap <buffer> <silent> \+tcn :call C_InsertTemplate("cpp.template-class-using-new-definition")
inoremap <buffer> <silent> \+tc :call C_InsertTemplate("cpp.template-class-definition")
inoremap <buffer> <silent> \+ai :call C_InsertTemplate("cpp.accessor-implementation")
inoremap <buffer> <silent> \+mi :call C_InsertTemplate("cpp.method-implementation")
inoremap <buffer> <silent> \+cni :call C_InsertTemplate("cpp.class-using-new-implementation")
inoremap <buffer> <silent> \+ci :call C_InsertTemplate("cpp.class-implementation")
inoremap <buffer> <silent> \+cn :call C_InsertTemplate("cpp.class-using-new-definition")
inoremap <buffer> <silent> \+c :call C_InsertTemplate("cpp.class-definition")
inoremap <buffer> <silent> \+co :call C_InsertTemplate("cpp.cout")
inoremap <buffer> <silent> \ns :call C_ProtoShow()
inoremap <buffer> <silent> \nc :call C_ProtoClear()
inoremap <buffer> <silent> \ni :call C_ProtoInsert()
inoremap <buffer> <silent> \np :call C_ProtoPick("n")
inoremap <buffer> <silent> \ne :call C_CodeSnippet("e")
inoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
inoremap <buffer> <silent> \nr :call C_CodeSnippet("r")
inoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file")
inoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file")
inoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert")
inoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof")
inoremap <buffer> <silent> \ima :call C_InsertTemplate("idioms.malloc")
inoremap <buffer> <silent> \ica :call C_InsertTemplate("idioms.calloc")
inoremap <buffer> <silent> \isc :call C_InsertTemplate("idioms.scanf")
inoremap <buffer> <silent> \ip :call C_InsertTemplate("idioms.printf")
inoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union")
inoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct")
inoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum")
inoremap <buffer> <silent> \in :call C_CodeFor("down", "a")i
inoremap <buffer> <silent> \i0 :call C_CodeFor("up"  , "a")i
inoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main")
inoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static")
inoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function")
inoremap <buffer> <silent> \pp :call C_InsertTemplate("preprocessor.pragma")
inoremap <buffer> <silent> \pl :call C_InsertTemplate("preprocessor.line")
inoremap <buffer> <silent> \pe :call C_InsertTemplate("preprocessor.error")
inoremap <buffer> <silent> \pr0 :call C_PPIf0Remove()
inoremap <buffer> <silent> \pi0 :call C_PPIf0("a")2ji
inoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif")
inoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif")
inoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif")
inoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif")
inoremap <buffer> <silent> \pu :call C_InsertTemplate("preprocessor.undefine")
inoremap <buffer> <silent> \pd :call C_InsertTemplate("preprocessor.define")
inoremap <buffer> <silent> \p" :call C_InsertTemplate("preprocessor.include-local")
inoremap <buffer> <silent> \p< :call C_InsertTemplate("preprocessor.include-global")
inoremap <buffer> \+pc :IncludeCppC9Library 
inoremap <buffer> \+ps :IncludeCppLibrary 
inoremap <buffer> \pc :IncludeC99Library 
inoremap <buffer> \ps :IncludeStdLibrary 
inoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block")
inoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block")
inoremap <buffer> <silent> \sc :call C_InsertTemplate("statements.case")
inoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch")
inoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block")
inoremap <buffer> <silent> \sw :call C_InsertTemplate("statements.while")
inoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block")
inoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else")
inoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else")
inoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block")
inoremap <buffer> <silent> \si :call C_InsertTemplate("statements.if")
inoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block")
inoremap <buffer> <silent> \sf :call C_InsertTemplate("statements.for")
inoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while")
inoremap <buffer> \csc :SpecialComment 
inoremap <buffer> \ckc :KeywordComment 
inoremap <buffer> \chs :HFileSection 
inoremap <buffer> \ccs :CFileSection 
inoremap <buffer> <silent> \ct :call C_InsertDateAndTime('dt')a
inoremap <buffer> <silent> \cd :call C_InsertDateAndTime('d')a
inoremap <buffer> <silent> \cfdh :call C_InsertTemplate("comment.file-description-header")
inoremap <buffer> <silent> \cfdi :call C_InsertTemplate("comment.file-description")
inoremap <buffer> <silent> \ccl :call C_InsertTemplate("comment.class")
inoremap <buffer> <silent> \cme :call C_InsertTemplate("comment.method")
inoremap <buffer> <silent> \cfu :call C_InsertTemplate("comment.function")
inoremap <buffer> <silent> \cfr :call C_InsertTemplate("comment.frame")
inoremap <buffer> <silent> \cj :call C_AdjustLineEndComm("a")a
inoremap <buffer> <silent> \cl :call C_LineEndComment()
inoremap <buffer> { {}O
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=~/.vim/bundle/c/c-support/wordlists/c-c++-keywords.list,~/.vim/bundle/c/c-support/wordlists/k+r.list,~/.vim/bundle/c/c-support/wordlists/stl_index.list
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'c'
setlocal filetype=c
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=syntax
setlocal foldmethod=syntax
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=MyFoldText()
setlocal formatexpr=
setlocal formatoptions=ncroql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=omni#cpp#complete#Main
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'c'
setlocal syntax=c
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
36
normal! zo
49
normal! zo
56
normal! zo
58
normal! zo
let s:l = 50 - ((24 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
50
normal! 05|
tabedit src/pfring_if.h
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <silent> <S-F9> :call C_Arguments()
imap <buffer> <silent> <C-F9> :call C_Run()
imap <buffer> <silent> <F9> :call C_Link():call C_HlMessage()
imap <buffer> <silent> <M-F9> :call C_Compile():call C_HlMessage()
nmap <buffer> <silent> <NL> i=C_JumpCtrlJ()
vnoremap <buffer> /* s/*  */<Left><Left><Left>p
nnoremap <buffer> <silent> \cl :call C_LineEndComment()
nnoremap <buffer> <silent> \cj :call C_AdjustLineEndComm("a")
nnoremap <buffer> <silent> \c* :call C_CodeComment("a","yes"):nohlsearchj
nnoremap <buffer> <silent> \cc :call C_CodeComment("a","no"):nohlsearchj
nnoremap <buffer> <silent> \co :call C_CommentCode("a"):nohlsearch
nnoremap <buffer> <silent> \cd :call C_InsertDateAndTime('d')
nnoremap <buffer> <silent> \ct :call C_InsertDateAndTime('dt')
nnoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while")
nnoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block")
nnoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block")
nnoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else")
nnoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else")
nnoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block")
nnoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block")
nnoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch")
nnoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block")
nnoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block")
nnoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif")
nnoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif")
nnoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif")
nnoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif")
nnoremap <buffer> <silent> \pi0 :call C_PPIf0("a")2ji
nnoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function")
nnoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static")
nnoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main")
nnoremap <buffer> <silent> \i0 :call C_CodeFor("up"  , "a")
nnoremap <buffer> <silent> \in :call C_CodeFor("down", "a")
nnoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum")
nnoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct")
nnoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union")
nnoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof")
nnoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert")
nnoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file")
nnoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file")
nnoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
nnoremap <buffer> <silent> \np :call C_ProtoPick("n")
nnoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch")
nnoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch")
nnoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points")
nmap <buffer> <silent> \rh :call C_Hardcopy("n")
map <buffer> <silent> \hm :call C_Help("m")
map <buffer> <silent> \hp :call C_HelpCsupport()
map <buffer> <silent> \ro :call C_Toggle_Gvim_Xterm()
map <buffer> <silent> \rx :call C_XtermSize()
vmap <buffer> <silent> \rh :call C_Hardcopy("v")
map <buffer> <silent> \rs :call C_Settings()
omap <buffer> <silent> \rh :call C_Hardcopy("n")
map <buffer> <silent> \rd :call C_Indent()
map <buffer> <silent> \rpa :call C_SplintArguments()
map <buffer> <silent> \rp :call C_SplintCheck():call C_HlMessage()
map <buffer> <silent> \rma :call C_MakeArguments()
map <buffer> <silent> \rm :call C_Make()
map <buffer> <silent> \ra :call C_Arguments()
map <buffer> <silent> \rr :call C_Run()
map <buffer> <silent> \rl :call C_Link():call C_HlMessage()
map <buffer> <silent> \rc :call C_Compile():call C_HlMessage()
vnoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points", "v")
onoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points")
vnoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch", "v")
onoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch")
vnoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch", "v")
onoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch")
noremap <buffer> <silent> \+ec :call C_InsertTemplate("cpp.error-class")
noremap <buffer> <silent> \+tf :call C_InsertTemplate("cpp.template-function")
noremap <buffer> <silent> \+tai :call C_InsertTemplate("cpp.template-accessor-implementation")
noremap <buffer> <silent> \+tmi :call C_InsertTemplate("cpp.template-method-implementation")
noremap <buffer> <silent> \+tcni :call C_InsertTemplate("cpp.template-class-using-new-implementation")
noremap <buffer> <silent> \+tci :call C_InsertTemplate("cpp.template-class-implementation")
noremap <buffer> <silent> \+tcn :call C_InsertTemplate("cpp.template-class-using-new-definition")
noremap <buffer> <silent> \+tc :call C_InsertTemplate("cpp.template-class-definition")
noremap <buffer> <silent> \+ai :call C_InsertTemplate("cpp.accessor-implementation")
noremap <buffer> <silent> \+mi :call C_InsertTemplate("cpp.method-implementation")
noremap <buffer> <silent> \+cni :call C_InsertTemplate("cpp.class-using-new-implementation")
noremap <buffer> <silent> \+ci :call C_InsertTemplate("cpp.class-implementation")
noremap <buffer> <silent> \+cn :call C_InsertTemplate("cpp.class-using-new-definition")
noremap <buffer> <silent> \+c :call C_InsertTemplate("cpp.class-definition")
noremap <buffer> <silent> \+co :call C_InsertTemplate("cpp.cout")
noremap <buffer> \nts :CStyle 
noremap <buffer> <silent> \ntr :call C_RereadTemplates()
noremap <buffer> <silent> \ntg :call C_EditTemplates("global")
noremap <buffer> <silent> \ntl :call C_EditTemplates("local")
noremap <buffer> <silent> \ns :call C_ProtoShow()
noremap <buffer> <silent> \nc :call C_ProtoClear()
noremap <buffer> <silent> \ni :call C_ProtoInsert()
vnoremap <buffer> <silent> \np :call C_ProtoPick("v")
onoremap <buffer> <silent> \np :call C_ProtoPick("n")
noremap <buffer> <silent> \ne :call C_CodeSnippet("e")
vnoremap <buffer> <silent> \nw :call C_CodeSnippet("wv")
onoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
noremap <buffer> <silent> \nr :call C_CodeSnippet("r")
vnoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file", "v")
onoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file")
vnoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file", "v")
onoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file")
vnoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert", "v")
onoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert")
vnoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof", "v")
onoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof")
noremap <buffer> <silent> \ima :call C_InsertTemplate("idioms.malloc")
noremap <buffer> <silent> \ica :call C_InsertTemplate("idioms.calloc")
noremap <buffer> <silent> \isc :call C_InsertTemplate("idioms.scanf")
noremap <buffer> <silent> \ip :call C_InsertTemplate("idioms.printf")
vnoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union" , "v")
onoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union")
vnoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct", "v")
onoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct")
vnoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum"  , "v")
onoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum")
vnoremap <buffer> <silent> \in :call C_CodeFor("down", "v")
onoremap <buffer> <silent> \in :call C_CodeFor("down", "a")
vnoremap <buffer> <silent> \i0 :call C_CodeFor("up"  , "v")
onoremap <buffer> <silent> \i0 :call C_CodeFor("up"  , "a")
vnoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main", "v")
onoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main")
vnoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static", "v")
onoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static")
vnoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function", "v")
onoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function")
noremap <buffer> <silent> \pp :call C_InsertTemplate("preprocessor.pragma")
noremap <buffer> <silent> \pl :call C_InsertTemplate("preprocessor.line")
noremap <buffer> <silent> \pe :call C_InsertTemplate("preprocessor.error")
noremap <buffer> <silent> \pr0 :call C_PPIf0Remove()
vnoremap <buffer> <silent> \pi0 :call C_PPIf0("v")
onoremap <buffer> <silent> \pi0 :call C_PPIf0("a")2ji
vnoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif", "v")
vnoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif", "v")
vnoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif", "v")
vnoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif", "v")
onoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif")
onoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif")
onoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif")
onoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif")
noremap <buffer> <silent> \pu :call C_InsertTemplate("preprocessor.undefine")
noremap <buffer> <silent> \pd :call C_InsertTemplate("preprocessor.define")
noremap <buffer> <silent> \p" :call C_InsertTemplate("preprocessor.include-local")
noremap <buffer> <silent> \p< :call C_InsertTemplate("preprocessor.include-global")
noremap <buffer> \+pc :IncludeCppCLibrary 
noremap <buffer> \+ps :IncludeCppLibrary 
noremap <buffer> \pc :IncludeC99Library 
noremap <buffer> \ps :IncludeStdLibrary 
vnoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block", "v")
onoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block")
vnoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block", "v")
onoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block")
noremap <buffer> <silent> \sc :call C_InsertTemplate("statements.case")
vnoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch", "v")
onoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch")
vnoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block", "v")
onoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block")
noremap <buffer> <silent> \sw :call C_InsertTemplate("statements.while")
vnoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block", "v")
onoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block")
vnoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else", "v")
onoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else")
vnoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else", "v")
onoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else")
vnoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block", "v")
onoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block")
noremap <buffer> <silent> \si :call C_InsertTemplate("statements.if")
vnoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block", "v")
onoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block")
noremap <buffer> <silent> \sf :call C_InsertTemplate("statements.for")
vnoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while", "v")
onoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while")
noremap <buffer> \csc :SpecialComment 
noremap <buffer> \ckc :KeywordComment 
noremap <buffer> \chs :HFileSection 
noremap <buffer> \ccs :CFileSection 
vnoremap <buffer> <silent> \ct s:call C_InsertDateAndTime('dt')a
onoremap <buffer> <silent> \ct :call C_InsertDateAndTime('dt')
vnoremap <buffer> <silent> \cd s:call C_InsertDateAndTime('d')a
onoremap <buffer> <silent> \cd :call C_InsertDateAndTime('d')
noremap <buffer> <silent> \cfdh :call C_InsertTemplate("comment.file-description-header")
noremap <buffer> <silent> \cfdi :call C_InsertTemplate("comment.file-description")
noremap <buffer> <silent> \ccl :call C_InsertTemplate("comment.class")
noremap <buffer> <silent> \cme :call C_InsertTemplate("comment.method")
noremap <buffer> <silent> \cfu :call C_InsertTemplate("comment.function")
noremap <buffer> <silent> \cfr :call C_InsertTemplate("comment.frame")
vnoremap <buffer> <silent> \co :call C_CommentCode("v"):nohlsearch
onoremap <buffer> <silent> \co :call C_CommentCode("a"):nohlsearch
vnoremap <buffer> <silent> \cc :call C_CodeComment("v","no"):nohlsearchj
onoremap <buffer> <silent> \cc :call C_CodeComment("a","no"):nohlsearchj
vnoremap <buffer> <silent> \c* :call C_CodeComment("v","yes"):nohlsearchj
onoremap <buffer> <silent> \c* :call C_CodeComment("a","yes"):nohlsearchj
noremap <buffer> <silent> \cs :call C_GetLineEndCommCol()
vnoremap <buffer> <silent> \cj :call C_AdjustLineEndComm("v")
onoremap <buffer> <silent> \cj :call C_AdjustLineEndComm("a")
vnoremap <buffer> <silent> \cl :call C_MultiLineEndComments()a
onoremap <buffer> <silent> \cl :call C_LineEndComment()
vnoremap <buffer> { S{}Pk=iB
map <buffer> <silent> <S-F9> :call C_Arguments()
map <buffer> <silent> <C-F9> :call C_Run()
map <buffer> <silent> <F9> :call C_Link():call C_HlMessage()
map <buffer> <silent> <M-F9> :call C_Compile():call C_HlMessage()
imap <buffer> <silent> <NL> =C_JumpCtrlJ()
inoremap <buffer> /* /*/kA 
inoremap <buffer> /* /*  */<Left><Left><Left>
imap <buffer> <silent> \hm :call C_Help("m")
imap <buffer> <silent> \hp :call C_HelpCsupport()
imap <buffer> <silent> \ro :call C_Toggle_Gvim_Xterm()
imap <buffer> <silent> \rx :call C_XtermSize()
imap <buffer> <silent> \rs :call C_Settings()
imap <buffer> <silent> \rh :call C_Hardcopy("n")
imap <buffer> <silent> \rd :call C_Indent()
imap <buffer> <silent> \rpa :call C_SplintArguments()
imap <buffer> <silent> \rp :call C_SplintCheck():call C_HlMessage()
imap <buffer> <silent> \rma :call C_MakeArguments()
imap <buffer> <silent> \rm :call C_Make()
imap <buffer> <silent> \ra :call C_Arguments()
imap <buffer> <silent> \rr :call C_Run()
imap <buffer> <silent> \rl :call C_Link():call C_HlMessage()
imap <buffer> <silent> \rc :call C_Compile():call C_HlMessage()
inoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points")
inoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch")
inoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch")
inoremap <buffer> <silent> \+ec :call C_InsertTemplate("cpp.error-class")
inoremap <buffer> <silent> \+tf :call C_InsertTemplate("cpp.template-function")
inoremap <buffer> <silent> \+tai :call C_InsertTemplate("cpp.template-accessor-implementation")
inoremap <buffer> <silent> \+tmi :call C_InsertTemplate("cpp.template-method-implementation")
inoremap <buffer> <silent> \+tcni :call C_InsertTemplate("cpp.template-class-using-new-implementation")
inoremap <buffer> <silent> \+tci :call C_InsertTemplate("cpp.template-class-implementation")
inoremap <buffer> <silent> \+tcn :call C_InsertTemplate("cpp.template-class-using-new-definition")
inoremap <buffer> <silent> \+tc :call C_InsertTemplate("cpp.template-class-definition")
inoremap <buffer> <silent> \+ai :call C_InsertTemplate("cpp.accessor-implementation")
inoremap <buffer> <silent> \+mi :call C_InsertTemplate("cpp.method-implementation")
inoremap <buffer> <silent> \+cni :call C_InsertTemplate("cpp.class-using-new-implementation")
inoremap <buffer> <silent> \+ci :call C_InsertTemplate("cpp.class-implementation")
inoremap <buffer> <silent> \+cn :call C_InsertTemplate("cpp.class-using-new-definition")
inoremap <buffer> <silent> \+c :call C_InsertTemplate("cpp.class-definition")
inoremap <buffer> <silent> \+co :call C_InsertTemplate("cpp.cout")
inoremap <buffer> <silent> \ns :call C_ProtoShow()
inoremap <buffer> <silent> \nc :call C_ProtoClear()
inoremap <buffer> <silent> \ni :call C_ProtoInsert()
inoremap <buffer> <silent> \np :call C_ProtoPick("n")
inoremap <buffer> <silent> \ne :call C_CodeSnippet("e")
inoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
inoremap <buffer> <silent> \nr :call C_CodeSnippet("r")
inoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file")
inoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file")
inoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert")
inoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof")
inoremap <buffer> <silent> \ima :call C_InsertTemplate("idioms.malloc")
inoremap <buffer> <silent> \ica :call C_InsertTemplate("idioms.calloc")
inoremap <buffer> <silent> \isc :call C_InsertTemplate("idioms.scanf")
inoremap <buffer> <silent> \ip :call C_InsertTemplate("idioms.printf")
inoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union")
inoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct")
inoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum")
inoremap <buffer> <silent> \in :call C_CodeFor("down", "a")i
inoremap <buffer> <silent> \i0 :call C_CodeFor("up"  , "a")i
inoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main")
inoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static")
inoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function")
inoremap <buffer> <silent> \pp :call C_InsertTemplate("preprocessor.pragma")
inoremap <buffer> <silent> \pl :call C_InsertTemplate("preprocessor.line")
inoremap <buffer> <silent> \pe :call C_InsertTemplate("preprocessor.error")
inoremap <buffer> <silent> \pr0 :call C_PPIf0Remove()
inoremap <buffer> <silent> \pi0 :call C_PPIf0("a")2ji
inoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif")
inoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif")
inoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif")
inoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif")
inoremap <buffer> <silent> \pu :call C_InsertTemplate("preprocessor.undefine")
inoremap <buffer> <silent> \pd :call C_InsertTemplate("preprocessor.define")
inoremap <buffer> <silent> \p" :call C_InsertTemplate("preprocessor.include-local")
inoremap <buffer> <silent> \p< :call C_InsertTemplate("preprocessor.include-global")
inoremap <buffer> \+pc :IncludeCppC9Library 
inoremap <buffer> \+ps :IncludeCppLibrary 
inoremap <buffer> \pc :IncludeC99Library 
inoremap <buffer> \ps :IncludeStdLibrary 
inoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block")
inoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block")
inoremap <buffer> <silent> \sc :call C_InsertTemplate("statements.case")
inoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch")
inoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block")
inoremap <buffer> <silent> \sw :call C_InsertTemplate("statements.while")
inoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block")
inoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else")
inoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else")
inoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block")
inoremap <buffer> <silent> \si :call C_InsertTemplate("statements.if")
inoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block")
inoremap <buffer> <silent> \sf :call C_InsertTemplate("statements.for")
inoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while")
inoremap <buffer> \csc :SpecialComment 
inoremap <buffer> \ckc :KeywordComment 
inoremap <buffer> \chs :HFileSection 
inoremap <buffer> \ccs :CFileSection 
inoremap <buffer> <silent> \ct :call C_InsertDateAndTime('dt')a
inoremap <buffer> <silent> \cd :call C_InsertDateAndTime('d')a
inoremap <buffer> <silent> \cfdh :call C_InsertTemplate("comment.file-description-header")
inoremap <buffer> <silent> \cfdi :call C_InsertTemplate("comment.file-description")
inoremap <buffer> <silent> \ccl :call C_InsertTemplate("comment.class")
inoremap <buffer> <silent> \cme :call C_InsertTemplate("comment.method")
inoremap <buffer> <silent> \cfu :call C_InsertTemplate("comment.function")
inoremap <buffer> <silent> \cfr :call C_InsertTemplate("comment.frame")
inoremap <buffer> <silent> \cj :call C_AdjustLineEndComm("a")a
inoremap <buffer> <silent> \cl :call C_LineEndComment()
inoremap <buffer> { {}O
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=~/.vim/bundle/c/c-support/wordlists/c-c++-keywords.list,~/.vim/bundle/c/c-support/wordlists/k+r.list,~/.vim/bundle/c/c-support/wordlists/stl_index.list
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'cpp'
setlocal filetype=cpp
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=syntax
setlocal foldmethod=syntax
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=MyFoldText()
setlocal formatexpr=
setlocal formatoptions=ncroql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=omni#cpp#complete#Main
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'cpp'
setlocal syntax=cpp
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
29
normal! zo
let s:l = 1 - ((0 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 014|
tabedit src/pfring_if.c
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <silent> <S-F9> :call C_Arguments()
imap <buffer> <silent> <C-F9> :call C_Run()
imap <buffer> <silent> <F9> :call C_Link():call C_HlMessage()
imap <buffer> <silent> <M-F9> :call C_Compile():call C_HlMessage()
nmap <buffer> <silent> <NL> i=C_JumpCtrlJ()
vnoremap <buffer> /* s/*  */<Left><Left><Left>p
nmap <buffer> <silent> \rh :call C_Hardcopy("n")
nnoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points")
nnoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch")
nnoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch")
nnoremap <buffer> <silent> \np :call C_ProtoPick("n")
nnoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
nnoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file")
nnoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file")
nnoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert")
nnoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof")
nnoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union")
nnoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct")
nnoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum")
nnoremap <buffer> <silent> \in :call C_CodeFor("down", "a")
nnoremap <buffer> <silent> \i0 :call C_CodeFor("up"  , "a")
nnoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main")
nnoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static")
nnoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function")
nnoremap <buffer> <silent> \pi0 :call C_PPIf0("a")2ji
nnoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif")
nnoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif")
nnoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif")
nnoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif")
nnoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block")
nnoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block")
nnoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch")
nnoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block")
nnoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block")
nnoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else")
nnoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else")
nnoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block")
nnoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block")
nnoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while")
nnoremap <buffer> <silent> \ct :call C_InsertDateAndTime('dt')
nnoremap <buffer> <silent> \cd :call C_InsertDateAndTime('d')
nnoremap <buffer> <silent> \co :call C_CommentCode("a"):nohlsearch
nnoremap <buffer> <silent> \cc :call C_CodeComment("a","no"):nohlsearchj
nnoremap <buffer> <silent> \c* :call C_CodeComment("a","yes"):nohlsearchj
nnoremap <buffer> <silent> \cj :call C_AdjustLineEndComm("a")
nnoremap <buffer> <silent> \cl :call C_LineEndComment()
map <buffer> <silent> \hm :call C_Help("m")
map <buffer> <silent> \hp :call C_HelpCsupport()
map <buffer> <silent> \ro :call C_Toggle_Gvim_Xterm()
map <buffer> <silent> \rx :call C_XtermSize()
vmap <buffer> <silent> \rh :call C_Hardcopy("v")
map <buffer> <silent> \rs :call C_Settings()
omap <buffer> <silent> \rh :call C_Hardcopy("n")
map <buffer> <silent> \rd :call C_Indent()
map <buffer> <silent> \rpa :call C_SplintArguments()
map <buffer> <silent> \rp :call C_SplintCheck():call C_HlMessage()
map <buffer> <silent> \rma :call C_MakeArguments()
map <buffer> <silent> \rm :call C_Make()
map <buffer> <silent> \ra :call C_Arguments()
map <buffer> <silent> \rr :call C_Run()
map <buffer> <silent> \rl :call C_Link():call C_HlMessage()
map <buffer> <silent> \rc :call C_Compile():call C_HlMessage()
vnoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points", "v")
onoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points")
vnoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch", "v")
onoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch")
vnoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch", "v")
onoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch")
noremap <buffer> <silent> \+ec :call C_InsertTemplate("cpp.error-class")
noremap <buffer> <silent> \+tf :call C_InsertTemplate("cpp.template-function")
noremap <buffer> <silent> \+tai :call C_InsertTemplate("cpp.template-accessor-implementation")
noremap <buffer> <silent> \+tmi :call C_InsertTemplate("cpp.template-method-implementation")
noremap <buffer> <silent> \+tcni :call C_InsertTemplate("cpp.template-class-using-new-implementation")
noremap <buffer> <silent> \+tci :call C_InsertTemplate("cpp.template-class-implementation")
noremap <buffer> <silent> \+tcn :call C_InsertTemplate("cpp.template-class-using-new-definition")
noremap <buffer> <silent> \+tc :call C_InsertTemplate("cpp.template-class-definition")
noremap <buffer> <silent> \+ai :call C_InsertTemplate("cpp.accessor-implementation")
noremap <buffer> <silent> \+mi :call C_InsertTemplate("cpp.method-implementation")
noremap <buffer> <silent> \+cni :call C_InsertTemplate("cpp.class-using-new-implementation")
noremap <buffer> <silent> \+ci :call C_InsertTemplate("cpp.class-implementation")
noremap <buffer> <silent> \+cn :call C_InsertTemplate("cpp.class-using-new-definition")
noremap <buffer> <silent> \+c :call C_InsertTemplate("cpp.class-definition")
noremap <buffer> <silent> \+co :call C_InsertTemplate("cpp.cout")
noremap <buffer> \nts :CStyle 
noremap <buffer> <silent> \ntr :call C_RereadTemplates()
noremap <buffer> <silent> \ntg :call C_EditTemplates("global")
noremap <buffer> <silent> \ntl :call C_EditTemplates("local")
noremap <buffer> <silent> \ns :call C_ProtoShow()
noremap <buffer> <silent> \nc :call C_ProtoClear()
noremap <buffer> <silent> \ni :call C_ProtoInsert()
vnoremap <buffer> <silent> \np :call C_ProtoPick("v")
onoremap <buffer> <silent> \np :call C_ProtoPick("n")
noremap <buffer> <silent> \ne :call C_CodeSnippet("e")
vnoremap <buffer> <silent> \nw :call C_CodeSnippet("wv")
onoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
noremap <buffer> <silent> \nr :call C_CodeSnippet("r")
vnoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file", "v")
onoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file")
vnoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file", "v")
onoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file")
vnoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert", "v")
onoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert")
vnoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof", "v")
onoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof")
noremap <buffer> <silent> \ima :call C_InsertTemplate("idioms.malloc")
noremap <buffer> <silent> \ica :call C_InsertTemplate("idioms.calloc")
noremap <buffer> <silent> \isc :call C_InsertTemplate("idioms.scanf")
noremap <buffer> <silent> \ip :call C_InsertTemplate("idioms.printf")
vnoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union" , "v")
onoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union")
vnoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct", "v")
onoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct")
vnoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum"  , "v")
onoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum")
vnoremap <buffer> <silent> \in :call C_CodeFor("down", "v")
onoremap <buffer> <silent> \in :call C_CodeFor("down", "a")
vnoremap <buffer> <silent> \i0 :call C_CodeFor("up"  , "v")
onoremap <buffer> <silent> \i0 :call C_CodeFor("up"  , "a")
vnoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main", "v")
onoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main")
vnoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static", "v")
onoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static")
vnoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function", "v")
onoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function")
noremap <buffer> <silent> \pp :call C_InsertTemplate("preprocessor.pragma")
noremap <buffer> <silent> \pl :call C_InsertTemplate("preprocessor.line")
noremap <buffer> <silent> \pe :call C_InsertTemplate("preprocessor.error")
noremap <buffer> <silent> \pr0 :call C_PPIf0Remove()
vnoremap <buffer> <silent> \pi0 :call C_PPIf0("v")
onoremap <buffer> <silent> \pi0 :call C_PPIf0("a")2ji
vnoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif", "v")
vnoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif", "v")
vnoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif", "v")
vnoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif", "v")
onoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif")
onoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif")
onoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif")
onoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif")
noremap <buffer> <silent> \pu :call C_InsertTemplate("preprocessor.undefine")
noremap <buffer> <silent> \pd :call C_InsertTemplate("preprocessor.define")
noremap <buffer> <silent> \p" :call C_InsertTemplate("preprocessor.include-local")
noremap <buffer> <silent> \p< :call C_InsertTemplate("preprocessor.include-global")
noremap <buffer> \+pc :IncludeCppCLibrary 
noremap <buffer> \+ps :IncludeCppLibrary 
noremap <buffer> \pc :IncludeC99Library 
noremap <buffer> \ps :IncludeStdLibrary 
vnoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block", "v")
onoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block")
vnoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block", "v")
onoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block")
noremap <buffer> <silent> \sc :call C_InsertTemplate("statements.case")
vnoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch", "v")
onoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch")
vnoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block", "v")
onoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block")
noremap <buffer> <silent> \sw :call C_InsertTemplate("statements.while")
vnoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block", "v")
onoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block")
vnoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else", "v")
onoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else")
vnoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else", "v")
onoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else")
vnoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block", "v")
onoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block")
noremap <buffer> <silent> \si :call C_InsertTemplate("statements.if")
vnoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block", "v")
onoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block")
noremap <buffer> <silent> \sf :call C_InsertTemplate("statements.for")
vnoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while", "v")
onoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while")
noremap <buffer> \csc :SpecialComment 
noremap <buffer> \ckc :KeywordComment 
noremap <buffer> \chs :HFileSection 
noremap <buffer> \ccs :CFileSection 
vnoremap <buffer> <silent> \ct s:call C_InsertDateAndTime('dt')a
onoremap <buffer> <silent> \ct :call C_InsertDateAndTime('dt')
vnoremap <buffer> <silent> \cd s:call C_InsertDateAndTime('d')a
onoremap <buffer> <silent> \cd :call C_InsertDateAndTime('d')
noremap <buffer> <silent> \cfdh :call C_InsertTemplate("comment.file-description-header")
noremap <buffer> <silent> \cfdi :call C_InsertTemplate("comment.file-description")
noremap <buffer> <silent> \ccl :call C_InsertTemplate("comment.class")
noremap <buffer> <silent> \cme :call C_InsertTemplate("comment.method")
noremap <buffer> <silent> \cfu :call C_InsertTemplate("comment.function")
noremap <buffer> <silent> \cfr :call C_InsertTemplate("comment.frame")
vnoremap <buffer> <silent> \co :call C_CommentCode("v"):nohlsearch
onoremap <buffer> <silent> \co :call C_CommentCode("a"):nohlsearch
vnoremap <buffer> <silent> \cc :call C_CodeComment("v","no"):nohlsearchj
onoremap <buffer> <silent> \cc :call C_CodeComment("a","no"):nohlsearchj
vnoremap <buffer> <silent> \c* :call C_CodeComment("v","yes"):nohlsearchj
onoremap <buffer> <silent> \c* :call C_CodeComment("a","yes"):nohlsearchj
noremap <buffer> <silent> \cs :call C_GetLineEndCommCol()
vnoremap <buffer> <silent> \cj :call C_AdjustLineEndComm("v")
onoremap <buffer> <silent> \cj :call C_AdjustLineEndComm("a")
vnoremap <buffer> <silent> \cl :call C_MultiLineEndComments()a
onoremap <buffer> <silent> \cl :call C_LineEndComment()
vnoremap <buffer> { S{}Pk=iB
map <buffer> <silent> <S-F9> :call C_Arguments()
map <buffer> <silent> <C-F9> :call C_Run()
map <buffer> <silent> <F9> :call C_Link():call C_HlMessage()
map <buffer> <silent> <M-F9> :call C_Compile():call C_HlMessage()
imap <buffer> <silent> <NL> =C_JumpCtrlJ()
inoremap <buffer> /* /*/kA 
inoremap <buffer> /* /*  */<Left><Left><Left>
imap <buffer> <silent> \hm :call C_Help("m")
imap <buffer> <silent> \hp :call C_HelpCsupport()
imap <buffer> <silent> \ro :call C_Toggle_Gvim_Xterm()
imap <buffer> <silent> \rx :call C_XtermSize()
imap <buffer> <silent> \rs :call C_Settings()
imap <buffer> <silent> \rh :call C_Hardcopy("n")
imap <buffer> <silent> \rd :call C_Indent()
imap <buffer> <silent> \rpa :call C_SplintArguments()
imap <buffer> <silent> \rp :call C_SplintCheck():call C_HlMessage()
imap <buffer> <silent> \rma :call C_MakeArguments()
imap <buffer> <silent> \rm :call C_Make()
imap <buffer> <silent> \ra :call C_Arguments()
imap <buffer> <silent> \rr :call C_Run()
imap <buffer> <silent> \rl :call C_Link():call C_HlMessage()
imap <buffer> <silent> \rc :call C_Compile():call C_HlMessage()
inoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points")
inoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch")
inoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch")
inoremap <buffer> <silent> \+ec :call C_InsertTemplate("cpp.error-class")
inoremap <buffer> <silent> \+tf :call C_InsertTemplate("cpp.template-function")
inoremap <buffer> <silent> \+tai :call C_InsertTemplate("cpp.template-accessor-implementation")
inoremap <buffer> <silent> \+tmi :call C_InsertTemplate("cpp.template-method-implementation")
inoremap <buffer> <silent> \+tcni :call C_InsertTemplate("cpp.template-class-using-new-implementation")
inoremap <buffer> <silent> \+tci :call C_InsertTemplate("cpp.template-class-implementation")
inoremap <buffer> <silent> \+tcn :call C_InsertTemplate("cpp.template-class-using-new-definition")
inoremap <buffer> <silent> \+tc :call C_InsertTemplate("cpp.template-class-definition")
inoremap <buffer> <silent> \+ai :call C_InsertTemplate("cpp.accessor-implementation")
inoremap <buffer> <silent> \+mi :call C_InsertTemplate("cpp.method-implementation")
inoremap <buffer> <silent> \+cni :call C_InsertTemplate("cpp.class-using-new-implementation")
inoremap <buffer> <silent> \+ci :call C_InsertTemplate("cpp.class-implementation")
inoremap <buffer> <silent> \+cn :call C_InsertTemplate("cpp.class-using-new-definition")
inoremap <buffer> <silent> \+c :call C_InsertTemplate("cpp.class-definition")
inoremap <buffer> <silent> \+co :call C_InsertTemplate("cpp.cout")
inoremap <buffer> <silent> \ns :call C_ProtoShow()
inoremap <buffer> <silent> \nc :call C_ProtoClear()
inoremap <buffer> <silent> \ni :call C_ProtoInsert()
inoremap <buffer> <silent> \np :call C_ProtoPick("n")
inoremap <buffer> <silent> \ne :call C_CodeSnippet("e")
inoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
inoremap <buffer> <silent> \nr :call C_CodeSnippet("r")
inoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file")
inoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file")
inoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert")
inoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof")
inoremap <buffer> <silent> \ima :call C_InsertTemplate("idioms.malloc")
inoremap <buffer> <silent> \ica :call C_InsertTemplate("idioms.calloc")
inoremap <buffer> <silent> \isc :call C_InsertTemplate("idioms.scanf")
inoremap <buffer> <silent> \ip :call C_InsertTemplate("idioms.printf")
inoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union")
inoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct")
inoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum")
inoremap <buffer> <silent> \in :call C_CodeFor("down", "a")i
inoremap <buffer> <silent> \i0 :call C_CodeFor("up"  , "a")i
inoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main")
inoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static")
inoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function")
inoremap <buffer> <silent> \pp :call C_InsertTemplate("preprocessor.pragma")
inoremap <buffer> <silent> \pl :call C_InsertTemplate("preprocessor.line")
inoremap <buffer> <silent> \pe :call C_InsertTemplate("preprocessor.error")
inoremap <buffer> <silent> \pr0 :call C_PPIf0Remove()
inoremap <buffer> <silent> \pi0 :call C_PPIf0("a")2ji
inoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif")
inoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif")
inoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif")
inoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif")
inoremap <buffer> <silent> \pu :call C_InsertTemplate("preprocessor.undefine")
inoremap <buffer> <silent> \pd :call C_InsertTemplate("preprocessor.define")
inoremap <buffer> <silent> \p" :call C_InsertTemplate("preprocessor.include-local")
inoremap <buffer> <silent> \p< :call C_InsertTemplate("preprocessor.include-global")
inoremap <buffer> \+pc :IncludeCppC9Library 
inoremap <buffer> \+ps :IncludeCppLibrary 
inoremap <buffer> \pc :IncludeC99Library 
inoremap <buffer> \ps :IncludeStdLibrary 
inoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block")
inoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block")
inoremap <buffer> <silent> \sc :call C_InsertTemplate("statements.case")
inoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch")
inoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block")
inoremap <buffer> <silent> \sw :call C_InsertTemplate("statements.while")
inoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block")
inoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else")
inoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else")
inoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block")
inoremap <buffer> <silent> \si :call C_InsertTemplate("statements.if")
inoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block")
inoremap <buffer> <silent> \sf :call C_InsertTemplate("statements.for")
inoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while")
inoremap <buffer> \csc :SpecialComment 
inoremap <buffer> \ckc :KeywordComment 
inoremap <buffer> \chs :HFileSection 
inoremap <buffer> \ccs :CFileSection 
inoremap <buffer> <silent> \ct :call C_InsertDateAndTime('dt')a
inoremap <buffer> <silent> \cd :call C_InsertDateAndTime('d')a
inoremap <buffer> <silent> \cfdh :call C_InsertTemplate("comment.file-description-header")
inoremap <buffer> <silent> \cfdi :call C_InsertTemplate("comment.file-description")
inoremap <buffer> <silent> \ccl :call C_InsertTemplate("comment.class")
inoremap <buffer> <silent> \cme :call C_InsertTemplate("comment.method")
inoremap <buffer> <silent> \cfu :call C_InsertTemplate("comment.function")
inoremap <buffer> <silent> \cfr :call C_InsertTemplate("comment.frame")
inoremap <buffer> <silent> \cj :call C_AdjustLineEndComm("a")a
inoremap <buffer> <silent> \cl :call C_LineEndComment()
inoremap <buffer> { {}O
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=~/.vim/bundle/c/c-support/wordlists/c-c++-keywords.list,~/.vim/bundle/c/c-support/wordlists/k+r.list,~/.vim/bundle/c/c-support/wordlists/stl_index.list
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'c'
setlocal filetype=c
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=syntax
setlocal foldmethod=syntax
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=MyFoldText()
setlocal formatexpr=
setlocal formatoptions=ncroql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=omni#cpp#complete#Main
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'c'
setlocal syntax=c
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
31
normal! zo
60
normal! zo
67
normal! zo
31
normal! zc
95
normal! zo
103
normal! zo
107
normal! zo
109
normal! zo
114
normal! zo
121
normal! zo
121
normal! zc
let s:l = 9 - ((8 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
9
normal! 095|
tabedit src/net_stack.c
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <silent> <S-F9> :call C_Arguments()
imap <buffer> <silent> <C-F9> :call C_Run()
imap <buffer> <silent> <F9> :call C_Link():call C_HlMessage()
imap <buffer> <silent> <M-F9> :call C_Compile():call C_HlMessage()
nmap <buffer> <silent> <NL> i=C_JumpCtrlJ()
vnoremap <buffer> /* s/*  */<Left><Left><Left>p
nmap <buffer> <silent> \rh :call C_Hardcopy("n")
nnoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points")
nnoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch")
nnoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch")
nnoremap <buffer> <silent> \np :call C_ProtoPick("n")
nnoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
nnoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file")
nnoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file")
nnoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert")
nnoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof")
nnoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union")
nnoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct")
nnoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum")
nnoremap <buffer> <silent> \in :call C_CodeFor("down", "a")
nnoremap <buffer> <silent> \i0 :call C_CodeFor("up"  , "a")
nnoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main")
nnoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static")
nnoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function")
nnoremap <buffer> <silent> \pi0 :call C_PPIf0("a")2ji
nnoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif")
nnoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif")
nnoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif")
nnoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif")
nnoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block")
nnoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block")
nnoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch")
nnoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block")
nnoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block")
nnoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else")
nnoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else")
nnoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block")
nnoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block")
nnoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while")
nnoremap <buffer> <silent> \ct :call C_InsertDateAndTime('dt')
nnoremap <buffer> <silent> \cd :call C_InsertDateAndTime('d')
nnoremap <buffer> <silent> \co :call C_CommentCode("a"):nohlsearch
nnoremap <buffer> <silent> \cc :call C_CodeComment("a","no"):nohlsearchj
nnoremap <buffer> <silent> \c* :call C_CodeComment("a","yes"):nohlsearchj
nnoremap <buffer> <silent> \cj :call C_AdjustLineEndComm("a")
nnoremap <buffer> <silent> \cl :call C_LineEndComment()
map <buffer> <silent> \hm :call C_Help("m")
map <buffer> <silent> \hp :call C_HelpCsupport()
map <buffer> <silent> \ro :call C_Toggle_Gvim_Xterm()
map <buffer> <silent> \rx :call C_XtermSize()
vmap <buffer> <silent> \rh :call C_Hardcopy("v")
map <buffer> <silent> \rs :call C_Settings()
omap <buffer> <silent> \rh :call C_Hardcopy("n")
map <buffer> <silent> \rd :call C_Indent()
map <buffer> <silent> \rpa :call C_SplintArguments()
map <buffer> <silent> \rp :call C_SplintCheck():call C_HlMessage()
map <buffer> <silent> \rma :call C_MakeArguments()
map <buffer> <silent> \rm :call C_Make()
map <buffer> <silent> \ra :call C_Arguments()
map <buffer> <silent> \rr :call C_Run()
map <buffer> <silent> \rl :call C_Link():call C_HlMessage()
map <buffer> <silent> \rc :call C_Compile():call C_HlMessage()
vnoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points", "v")
onoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points")
vnoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch", "v")
onoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch")
vnoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch", "v")
onoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch")
noremap <buffer> <silent> \+ec :call C_InsertTemplate("cpp.error-class")
noremap <buffer> <silent> \+tf :call C_InsertTemplate("cpp.template-function")
noremap <buffer> <silent> \+tai :call C_InsertTemplate("cpp.template-accessor-implementation")
noremap <buffer> <silent> \+tmi :call C_InsertTemplate("cpp.template-method-implementation")
noremap <buffer> <silent> \+tcni :call C_InsertTemplate("cpp.template-class-using-new-implementation")
noremap <buffer> <silent> \+tci :call C_InsertTemplate("cpp.template-class-implementation")
noremap <buffer> <silent> \+tcn :call C_InsertTemplate("cpp.template-class-using-new-definition")
noremap <buffer> <silent> \+tc :call C_InsertTemplate("cpp.template-class-definition")
noremap <buffer> <silent> \+ai :call C_InsertTemplate("cpp.accessor-implementation")
noremap <buffer> <silent> \+mi :call C_InsertTemplate("cpp.method-implementation")
noremap <buffer> <silent> \+cni :call C_InsertTemplate("cpp.class-using-new-implementation")
noremap <buffer> <silent> \+ci :call C_InsertTemplate("cpp.class-implementation")
noremap <buffer> <silent> \+cn :call C_InsertTemplate("cpp.class-using-new-definition")
noremap <buffer> <silent> \+c :call C_InsertTemplate("cpp.class-definition")
noremap <buffer> <silent> \+co :call C_InsertTemplate("cpp.cout")
noremap <buffer> \nts :CStyle 
noremap <buffer> <silent> \ntr :call C_RereadTemplates()
noremap <buffer> <silent> \ntg :call C_EditTemplates("global")
noremap <buffer> <silent> \ntl :call C_EditTemplates("local")
noremap <buffer> <silent> \ns :call C_ProtoShow()
noremap <buffer> <silent> \nc :call C_ProtoClear()
noremap <buffer> <silent> \ni :call C_ProtoInsert()
vnoremap <buffer> <silent> \np :call C_ProtoPick("v")
onoremap <buffer> <silent> \np :call C_ProtoPick("n")
noremap <buffer> <silent> \ne :call C_CodeSnippet("e")
vnoremap <buffer> <silent> \nw :call C_CodeSnippet("wv")
onoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
noremap <buffer> <silent> \nr :call C_CodeSnippet("r")
vnoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file", "v")
onoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file")
vnoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file", "v")
onoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file")
vnoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert", "v")
onoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert")
vnoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof", "v")
onoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof")
noremap <buffer> <silent> \ima :call C_InsertTemplate("idioms.malloc")
noremap <buffer> <silent> \ica :call C_InsertTemplate("idioms.calloc")
noremap <buffer> <silent> \isc :call C_InsertTemplate("idioms.scanf")
noremap <buffer> <silent> \ip :call C_InsertTemplate("idioms.printf")
vnoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union" , "v")
onoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union")
vnoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct", "v")
onoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct")
vnoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum"  , "v")
onoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum")
vnoremap <buffer> <silent> \in :call C_CodeFor("down", "v")
onoremap <buffer> <silent> \in :call C_CodeFor("down", "a")
vnoremap <buffer> <silent> \i0 :call C_CodeFor("up"  , "v")
onoremap <buffer> <silent> \i0 :call C_CodeFor("up"  , "a")
vnoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main", "v")
onoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main")
vnoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static", "v")
onoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static")
vnoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function", "v")
onoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function")
noremap <buffer> <silent> \pp :call C_InsertTemplate("preprocessor.pragma")
noremap <buffer> <silent> \pl :call C_InsertTemplate("preprocessor.line")
noremap <buffer> <silent> \pe :call C_InsertTemplate("preprocessor.error")
noremap <buffer> <silent> \pr0 :call C_PPIf0Remove()
vnoremap <buffer> <silent> \pi0 :call C_PPIf0("v")
onoremap <buffer> <silent> \pi0 :call C_PPIf0("a")2ji
vnoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif", "v")
vnoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif", "v")
vnoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif", "v")
vnoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif", "v")
onoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif")
onoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif")
onoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif")
onoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif")
noremap <buffer> <silent> \pu :call C_InsertTemplate("preprocessor.undefine")
noremap <buffer> <silent> \pd :call C_InsertTemplate("preprocessor.define")
noremap <buffer> <silent> \p" :call C_InsertTemplate("preprocessor.include-local")
noremap <buffer> <silent> \p< :call C_InsertTemplate("preprocessor.include-global")
noremap <buffer> \+pc :IncludeCppCLibrary 
noremap <buffer> \+ps :IncludeCppLibrary 
noremap <buffer> \pc :IncludeC99Library 
noremap <buffer> \ps :IncludeStdLibrary 
vnoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block", "v")
onoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block")
vnoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block", "v")
onoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block")
noremap <buffer> <silent> \sc :call C_InsertTemplate("statements.case")
vnoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch", "v")
onoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch")
vnoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block", "v")
onoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block")
noremap <buffer> <silent> \sw :call C_InsertTemplate("statements.while")
vnoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block", "v")
onoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block")
vnoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else", "v")
onoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else")
vnoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else", "v")
onoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else")
vnoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block", "v")
onoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block")
noremap <buffer> <silent> \si :call C_InsertTemplate("statements.if")
vnoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block", "v")
onoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block")
noremap <buffer> <silent> \sf :call C_InsertTemplate("statements.for")
vnoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while", "v")
onoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while")
noremap <buffer> \csc :SpecialComment 
noremap <buffer> \ckc :KeywordComment 
noremap <buffer> \chs :HFileSection 
noremap <buffer> \ccs :CFileSection 
vnoremap <buffer> <silent> \ct s:call C_InsertDateAndTime('dt')a
onoremap <buffer> <silent> \ct :call C_InsertDateAndTime('dt')
vnoremap <buffer> <silent> \cd s:call C_InsertDateAndTime('d')a
onoremap <buffer> <silent> \cd :call C_InsertDateAndTime('d')
noremap <buffer> <silent> \cfdh :call C_InsertTemplate("comment.file-description-header")
noremap <buffer> <silent> \cfdi :call C_InsertTemplate("comment.file-description")
noremap <buffer> <silent> \ccl :call C_InsertTemplate("comment.class")
noremap <buffer> <silent> \cme :call C_InsertTemplate("comment.method")
noremap <buffer> <silent> \cfu :call C_InsertTemplate("comment.function")
noremap <buffer> <silent> \cfr :call C_InsertTemplate("comment.frame")
vnoremap <buffer> <silent> \co :call C_CommentCode("v"):nohlsearch
onoremap <buffer> <silent> \co :call C_CommentCode("a"):nohlsearch
vnoremap <buffer> <silent> \cc :call C_CodeComment("v","no"):nohlsearchj
onoremap <buffer> <silent> \cc :call C_CodeComment("a","no"):nohlsearchj
vnoremap <buffer> <silent> \c* :call C_CodeComment("v","yes"):nohlsearchj
onoremap <buffer> <silent> \c* :call C_CodeComment("a","yes"):nohlsearchj
noremap <buffer> <silent> \cs :call C_GetLineEndCommCol()
vnoremap <buffer> <silent> \cj :call C_AdjustLineEndComm("v")
onoremap <buffer> <silent> \cj :call C_AdjustLineEndComm("a")
vnoremap <buffer> <silent> \cl :call C_MultiLineEndComments()a
onoremap <buffer> <silent> \cl :call C_LineEndComment()
vnoremap <buffer> { S{}Pk=iB
map <buffer> <silent> <S-F9> :call C_Arguments()
map <buffer> <silent> <C-F9> :call C_Run()
map <buffer> <silent> <F9> :call C_Link():call C_HlMessage()
map <buffer> <silent> <M-F9> :call C_Compile():call C_HlMessage()
imap <buffer> <silent> <NL> =C_JumpCtrlJ()
inoremap <buffer> /* /*/kA 
inoremap <buffer> /* /*  */<Left><Left><Left>
imap <buffer> <silent> \hm :call C_Help("m")
imap <buffer> <silent> \hp :call C_HelpCsupport()
imap <buffer> <silent> \ro :call C_Toggle_Gvim_Xterm()
imap <buffer> <silent> \rx :call C_XtermSize()
imap <buffer> <silent> \rs :call C_Settings()
imap <buffer> <silent> \rh :call C_Hardcopy("n")
imap <buffer> <silent> \rd :call C_Indent()
imap <buffer> <silent> \rpa :call C_SplintArguments()
imap <buffer> <silent> \rp :call C_SplintCheck():call C_HlMessage()
imap <buffer> <silent> \rma :call C_MakeArguments()
imap <buffer> <silent> \rm :call C_Make()
imap <buffer> <silent> \ra :call C_Arguments()
imap <buffer> <silent> \rr :call C_Run()
imap <buffer> <silent> \rl :call C_Link():call C_HlMessage()
imap <buffer> <silent> \rc :call C_Compile():call C_HlMessage()
inoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points")
inoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch")
inoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch")
inoremap <buffer> <silent> \+ec :call C_InsertTemplate("cpp.error-class")
inoremap <buffer> <silent> \+tf :call C_InsertTemplate("cpp.template-function")
inoremap <buffer> <silent> \+tai :call C_InsertTemplate("cpp.template-accessor-implementation")
inoremap <buffer> <silent> \+tmi :call C_InsertTemplate("cpp.template-method-implementation")
inoremap <buffer> <silent> \+tcni :call C_InsertTemplate("cpp.template-class-using-new-implementation")
inoremap <buffer> <silent> \+tci :call C_InsertTemplate("cpp.template-class-implementation")
inoremap <buffer> <silent> \+tcn :call C_InsertTemplate("cpp.template-class-using-new-definition")
inoremap <buffer> <silent> \+tc :call C_InsertTemplate("cpp.template-class-definition")
inoremap <buffer> <silent> \+ai :call C_InsertTemplate("cpp.accessor-implementation")
inoremap <buffer> <silent> \+mi :call C_InsertTemplate("cpp.method-implementation")
inoremap <buffer> <silent> \+cni :call C_InsertTemplate("cpp.class-using-new-implementation")
inoremap <buffer> <silent> \+ci :call C_InsertTemplate("cpp.class-implementation")
inoremap <buffer> <silent> \+cn :call C_InsertTemplate("cpp.class-using-new-definition")
inoremap <buffer> <silent> \+c :call C_InsertTemplate("cpp.class-definition")
inoremap <buffer> <silent> \+co :call C_InsertTemplate("cpp.cout")
inoremap <buffer> <silent> \ns :call C_ProtoShow()
inoremap <buffer> <silent> \nc :call C_ProtoClear()
inoremap <buffer> <silent> \ni :call C_ProtoInsert()
inoremap <buffer> <silent> \np :call C_ProtoPick("n")
inoremap <buffer> <silent> \ne :call C_CodeSnippet("e")
inoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
inoremap <buffer> <silent> \nr :call C_CodeSnippet("r")
inoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file")
inoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file")
inoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert")
inoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof")
inoremap <buffer> <silent> \ima :call C_InsertTemplate("idioms.malloc")
inoremap <buffer> <silent> \ica :call C_InsertTemplate("idioms.calloc")
inoremap <buffer> <silent> \isc :call C_InsertTemplate("idioms.scanf")
inoremap <buffer> <silent> \ip :call C_InsertTemplate("idioms.printf")
inoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union")
inoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct")
inoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum")
inoremap <buffer> <silent> \in :call C_CodeFor("down", "a")i
inoremap <buffer> <silent> \i0 :call C_CodeFor("up"  , "a")i
inoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main")
inoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static")
inoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function")
inoremap <buffer> <silent> \pp :call C_InsertTemplate("preprocessor.pragma")
inoremap <buffer> <silent> \pl :call C_InsertTemplate("preprocessor.line")
inoremap <buffer> <silent> \pe :call C_InsertTemplate("preprocessor.error")
inoremap <buffer> <silent> \pr0 :call C_PPIf0Remove()
inoremap <buffer> <silent> \pi0 :call C_PPIf0("a")2ji
inoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif")
inoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif")
inoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif")
inoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif")
inoremap <buffer> <silent> \pu :call C_InsertTemplate("preprocessor.undefine")
inoremap <buffer> <silent> \pd :call C_InsertTemplate("preprocessor.define")
inoremap <buffer> <silent> \p" :call C_InsertTemplate("preprocessor.include-local")
inoremap <buffer> <silent> \p< :call C_InsertTemplate("preprocessor.include-global")
inoremap <buffer> \+pc :IncludeCppC9Library 
inoremap <buffer> \+ps :IncludeCppLibrary 
inoremap <buffer> \pc :IncludeC99Library 
inoremap <buffer> \ps :IncludeStdLibrary 
inoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block")
inoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block")
inoremap <buffer> <silent> \sc :call C_InsertTemplate("statements.case")
inoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch")
inoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block")
inoremap <buffer> <silent> \sw :call C_InsertTemplate("statements.while")
inoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block")
inoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else")
inoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else")
inoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block")
inoremap <buffer> <silent> \si :call C_InsertTemplate("statements.if")
inoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block")
inoremap <buffer> <silent> \sf :call C_InsertTemplate("statements.for")
inoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while")
inoremap <buffer> \csc :SpecialComment 
inoremap <buffer> \ckc :KeywordComment 
inoremap <buffer> \chs :HFileSection 
inoremap <buffer> \ccs :CFileSection 
inoremap <buffer> <silent> \ct :call C_InsertDateAndTime('dt')a
inoremap <buffer> <silent> \cd :call C_InsertDateAndTime('d')a
inoremap <buffer> <silent> \cfdh :call C_InsertTemplate("comment.file-description-header")
inoremap <buffer> <silent> \cfdi :call C_InsertTemplate("comment.file-description")
inoremap <buffer> <silent> \ccl :call C_InsertTemplate("comment.class")
inoremap <buffer> <silent> \cme :call C_InsertTemplate("comment.method")
inoremap <buffer> <silent> \cfu :call C_InsertTemplate("comment.function")
inoremap <buffer> <silent> \cfr :call C_InsertTemplate("comment.frame")
inoremap <buffer> <silent> \cj :call C_AdjustLineEndComm("a")a
inoremap <buffer> <silent> \cl :call C_LineEndComment()
inoremap <buffer> { {}O
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=~/.vim/bundle/c/c-support/wordlists/c-c++-keywords.list,~/.vim/bundle/c/c-support/wordlists/k+r.list,~/.vim/bundle/c/c-support/wordlists/stl_index.list
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'c'
setlocal filetype=c
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=syntax
setlocal foldmethod=syntax
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=MyFoldText()
setlocal formatexpr=
setlocal formatoptions=ncroql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=omni#cpp#complete#Main
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'c'
setlocal syntax=c
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
44
normal! zo
113
normal! zo
let s:l = 118 - ((50 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
118
normal! 040|
tabedit Makefile
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:#\ -,mO:#\ \ ,b:#
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal noexpandtab
if &filetype != 'make'
setlocal filetype=make
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=syntax
setlocal foldmethod=syntax
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=ncroql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=^\\s*include
setlocal includeexpr=
setlocal indentexpr=GetMakeIndent()
setlocal indentkeys=!^F,o,O,<:>,=else,=endif
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=omni#cpp#complete#Main
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'make'
setlocal syntax=make
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
let s:l = 44 - ((0 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
44
normal! 0
tabnext 3
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=aoOAI
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
