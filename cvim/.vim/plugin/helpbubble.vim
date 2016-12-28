"============================================================================"
" Help Bubble 
"
" shows python help for word at cursor
" from ... import ... aware
"
" usage:
"   press <alt-]> in insert or normal modes
"
" behavior:
"   plugin split current window and show help in upper one
"   second help request for same word will close window
"   jump to new window if help text is too big
"============================================================================"
" guard
if exists('loaded_helpbubble')
  finish
endif
let loaded_helpbubble = 1

" Options starts here
"============================================================================"
" help window height
let s:splitSize = 12

" jump to help window if lines count greater than
let s:jumpThreshold = 28

command! Welp call s:toggleWindow()
command! WelpClose call s:closeWindow()

nmap K :Welp<CR>
"============================================================================"
" Options end here

" It's pointless to modify this variables
" Do not do that
let s:next_buffer_number = 1
let s:bufName = '__BubbleHelper__'

" toggle help window
fun! s:toggleWindow()
  let currWord = s:getWordAtCursor()

  if exists("t:__BubbleLastWord__") && t:__BubbleLastWord__ == currWord
    WelpClose
    let t:__BubbleLastWord__ = ""
    return
  endif

  let t:__BubbleLastWord__ = currWord
  call s:showHelp(s:getHelp(currWord, s:getImports()))
endf

" show help window
function! s:showHelp(helpText)
  let fromWin = winnr()

  try 
    if !exists("t:__BubbleHelper__")
      let t:__BubbleHelper__ = s:nextBufferName()

      silent! exec  s:splitSize . ' new'
      silent! exec "edit " . t:__BubbleHelper__

      " Mark the buffer as scratch
      setlocal buftype=nofile
      setlocal bufhidden=hide
      setlocal noswapfile
      setlocal nowrap
      setlocal nobuflisted
      setlocal filetype=python 
      setlocal foldlevel=100
      setlocal nonu

      map <buffer> <ESC> :WelpClose <CR>
    else
      let winNumber = bufwinnr(t:__BubbleHelper__)

      if (winNumber != -1)
        exec winNumber . 'wincmd w '
      else
        exec s:splitSize . ' split'
        exec "buffer! " . t:__BubbleHelper__
      endif
    endif

    set modifiable
    silent! 1,$delete _
    silent! put = a:helpText
    normal ggdd
    set nomodifiable
  catch /.*/
    echo "Error occured"
  finally
    if len(a:helpText) <= s:splitSize
      " jump to the last window
      try 
         exec fromWin . 'wincmd w '
      catch /.*/
        " avoid E21 warning in insert mode
      endtry
    endif
  endtry
endfunction

" hide help window
function! s:closeWindow()
  if exists("t:__BubbleHelper__")
    let winNumber = bufwinnr(t:__BubbleHelper__)
    if (winNumber != -1)
      execute  winNumber . 'wincmd w '
      silent quit
    endif
  endif
endfunction

" returns the buffer name for the next help window
function! s:nextBufferName()
    let name = s:bufName . s:next_buffer_number
    let s:next_buffer_number += 1
    return name
endfunction

" returns cleared helpText as list of lines
fun! s:getHelp(searchWord, imports)
  " Find module
  let part = a:searchWord
  while has_key(a:imports, part)
    let a:searchWord = a:imports[part] . '.' . a:searchWord
    let part = a:imports[part]
  endwhile

  " Get help to 'helpText' variable
  redir => helpText
  exec 'silent! !python -c "help(\"' . a:searchWord . '\")"'
  redir END

  let clearText = substitute(helpText, '\r', "", "g")
  let helpList = split(clearText, '\n') 

  return helpList[1:]
endf

" returns imports in form of {'imported_name' : 'from_module'}
fun! s:getImports()
  " Save position and '/' register
  let old_search = @/
  let oldPos = getpos('.')

  let lines = [] 
  let imports = {}
  let expFrom = '\v\s*from\s+(\S+)\s+import\s+(\\?(\S+)|(\S+(\\?\s*,\s*S+)+))'

  silent! exec 'g/' . expFrom . '/' . 'let lines += [getline(line("."))]' 
  for i in lines 
    let list = split(substitute(i, expFrom, '\1,\2', ""), ',')
    let j = 1
    while j < len(list)
      let imports[list[j]] = list[0]
      let j += 1
    endwhile
  endfor

  " Restore registers and position
  let @/ = old_search
  call setpos('.', oldPos)

  return imports
endf

" return word at cursor in the current window
fun! s:getWordAtCursor()
  " Save position '/' and 'l' register
  let old_l = @l
  let old_search = @/
  let oldPos = getpos('.')
  let old_isk = &iskeyword 
  " define word boundaries
  set iskeyword+=.
  let expNotToken = '[^a-zA-Z\.0-9]\|^'
  
  " Get searchWord
  normal "lyaw
  " are we in the next line ?
  let searchWord = substitute(@l, expNotToken, "", "g")

  " Restore registers and position
  call setpos('.', oldPos)
  let @l = old_l
  let &iskeyword = old_isk

  return searchWord
endf

