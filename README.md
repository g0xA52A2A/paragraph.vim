# paragraph.vim

Replaces the `{` and `}` motions such that they always land on the
non-blank lines at the start/end of a paragraph rather than the blank
space between.

## Mappings

To disable the default behaviour of replacing the default motions set
`g:paragraph_defaults` to a value of `1`.

Alternative mappings can be created as follows.

```vim
let g:paragraph_defaults=1

nnoremap <key> <Plug>(paragraph_backward)
nnoremap <key> <Plug>(paragraph_forward)

xnoremap <key> <Plug>(paragraph_backward_visual)
xnoremap <key> <Plug>(paragraph_forward_visual)
```

## Operators

This does not replace the behaviour of `{` and `}` motions when used in
operator pending mode as I feel the default behaviour works well there.
