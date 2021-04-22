function! paragraph#Motion(count, forward, visual) abort
  if a:visual
    normal! gv
  endif

  let [direction, end] = a:forward ? ['', line('$')] : ['b', 1]

  for step in range(a:count)
    let line       = line('.')
    let next       = a:forward ? line + 1 : line - 1
    let line_blank = empty(getline(line))
    let next_blank = empty(getline(next))

    if line_blank && !next_blank
      let jump = [next, 0]
    elseif next_blank
      let jump = searchpos('\v^.+$', direction . 'nWz')
    else
      let jump = searchpos('\v^$',   direction . 'nWz')
      let jump[0] = jump[0] ?
        \ a:forward ? jump[0] - 1 : jump[0] + 1 :
        \ end
    endif

    call cursor(jump)
  endfor
endfunction
