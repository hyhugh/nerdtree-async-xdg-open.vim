" === plugin configuration variables === {{{

function! s:callback()
    call vimproc#system_bg('xdg-open' . ' ' . g:NERDTreeFileNode.GetSelected().path.str())
endfunction

function! s:callback_name()
    return matchstr(expand('<sfile>'), '<SNR>\d\+_') . 'callback'
endfunction

call NERDTreeAddMenuItem({
            \ 'text': 'open file externally',
            \ 'shortcut': 'e',
            \ 'callback': s:callback_name()
            \ })

" }}}
