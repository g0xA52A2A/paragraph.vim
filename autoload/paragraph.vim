function! paragraph#Motion(count, forward, visual) abort
  if a:visual
    normal! gv
  endif

  let [delta, motion] = (a:forward) ?  [1, '}'] : [-1, '{']

  if a:forward
    let adjust = empty(getline(line('.') + delta)) ? '+' : '-'
  else
    let adjust = empty(getline(line('.') + delta)) ? '-' : '+'
  endif

  if line('''' . motion) != 1 && line('''' . motion) != line('$')
    execute 'normal!' a:count . motion . adjust
  else
    execute 'normal!' a:count . motion
  endif
endfunction
