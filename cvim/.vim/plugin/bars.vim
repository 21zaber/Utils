if exists('python_bubble')
  finish
endif

fun UpperBubble()
  " code
endf

command! PhUp :call UpperBubble <CR> 
map <A-]> PhUp
