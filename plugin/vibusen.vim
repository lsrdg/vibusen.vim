function! VibusenGetEngine()
    let s:VibusenCurrentEngine=system('ibus engine')
endfunction

if !exists('g:VibusenDefaultEngine')
    let g:VibusenDefaultEngine = 'xkb:us::eng'
endif

function! VibusenSetNormalModeEngine()
    silent execute "!ibus engine " . g:VibusenDefaultEngine
endfunction

function! VibusenSetInsertModePreviousEngine()
    if !exists('s:VibusenCurrentEngine')
      silent execute "!ibus engine " . s:VibusenDefaultEngine
      silent execute "!ibus engine " . s:VibusenCurrentEngine
    else
      silent execute "!ibus engine " . s:VibusenCurrentEngine
    endif
endfunction

augroup vibusennormalentering
    au!
    autocmd InsertLeave * :call VibusenGetEngine()
    autocmd InsertLeave * :call VibusenSetNormalModeEngine()
augroup END

augroup vibuseninsertentering
    au!
    autocmd InsertEnter * :call VibusenSetInsertModePreviousEngine()
augroup END

