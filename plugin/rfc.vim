" rfc.vim : Download RFC over https
" Credit  : Jan Christoph Ebersbach <jceb@e-jc.de>
" Version : 0.1

if (exists("g:loaded_rfc") && g:loaded_rfc) || &cp
  finish
endif

let g:loaded_rfc = 1

" 'RFC <number>' open the requested RFC number in a new window
function! RFC(number)
  if a:number =~ '^[0-9]'
    silent exe ":e https://www.ietf.org/rfc/rfc" . a:number . ".txt"
  else
    echoerr a:number . " is not a number"
  endif
endfunction

" ':RFC <number>' open the requested RFC number in a new window
command! -nargs=1 RFC call RFC(<q-args>)
