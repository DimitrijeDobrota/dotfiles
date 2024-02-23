" https://vi.stackexchange.com/questions/2232/how-can-i-use-vim-as-a-hex-editor
augroup Binary
    au!
    au BufReadPre    *.bin let &bin=1
    au BufReadPost   *.bin if &bin | %!xxd
    au BufReadPost   *.bin set ft=xxd | endif
    au BufWritePre   *.bin if &bin | %!xxd -r
    au BufWritePre   *.bin endif
    au BufWritePost  *.bin if &bin | %!xxd
    au BufWritePost  *.bin set nomod | endif
augroup END
