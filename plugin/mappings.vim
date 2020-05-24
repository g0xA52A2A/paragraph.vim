nnoremap <silent> <Plug>(paragraph_backward) :<C-U>call paragraph#Motion(v:count1, 0, 0)<CR>
nnoremap <silent> <Plug>(paragraph_forward)  :<C-U>call paragraph#Motion(v:count1, 1, 0)<CR>

xnoremap <silent> <Plug>(paragraph_backward_visual) :<C-U>call paragraph#Motion(v:count1, 0, 1)<CR>
xnoremap <silent> <Plug>(paragraph_forward_visual)  :<C-U>call paragraph#Motion(v:count1, 1, 1)<CR>

if !exists('g:paragraph_defaults') || g:paragraph_defaults != 1
  nmap { <Plug>(paragraph_backward)
  nmap } <Plug>(paragraph_forward)

  xmap { <Plug>(paragraph_backward_visual)
  xmap } <Plug>(paragraph_forward_visual)
endif
