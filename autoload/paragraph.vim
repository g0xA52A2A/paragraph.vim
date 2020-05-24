function! paragraph#Motion(count, forward, visual)
  if a:visual
    normal! gv
  endif

  let first_line = 1
  let last_line  = line('$')
  let delta      = (a:forward) ?  1  : -1
  let motion     = (a:forward) ? '}' : '{'

  if a:forward
    let adjust = empty(getline(line('.') + delta)) ? '+' : '-'
  else
    let adjust = empty(getline(line('.') + delta)) ? '-' : '+'
  endif

  if line('''' . motion) != first_line && line('''' . motion) != last_line
    execute 'normal!' a:count . motion . adjust
  else
    execute 'normal!' a:count . motion
  endif
endfunction
