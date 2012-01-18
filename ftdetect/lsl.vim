if exists("s:loaded_ftdetect_lsl")
    finish
else
    let s:loaded_ftdetect_lsl=1
        autocmd BufNewFile,BufRead *.lsl setfiletype lsl
    endif
    finish
endif
