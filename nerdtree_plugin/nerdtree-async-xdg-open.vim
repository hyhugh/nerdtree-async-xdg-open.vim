" {{{

function! s:callback()
    echo vimproc#system_bg('xdg-open' . ' ' . g:NERDTreeFileNode.GetSelected().path.str(). ' 1>/dev/null 2>/dev/null' )
endfunction

function! s:callback_name()
    return matchstr(expand('<sfile>'), '<SNR>\d\+_') . 'callback'
endfunction

call NERDTreeAddMenuItem({
            \ 'text': 'async open file (e)xternally',
            \ 'shortcut': 'e',
            \ 'callback': s:callback_name()
            \ })

" }}}
