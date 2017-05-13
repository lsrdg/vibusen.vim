function! GetEngine()
    let s:curengine=system('ibus engine')
endfunction

if !exists('g:IbusDefaultEngine')
    let g:IbusDefaultEngine = 'xkb:us::eng'
endif

function! SetNormalModeEngine()
    execute "!ibus engine " . g:IbusDefaultEngine
endfunction

function! SetInsertModePreviousEngine()
    if exists('s:curengine')
	execute "!ibus engine " . s:curengine
    endif
endfunction

augroup normalentering
    au!
    autocmd InsertLeave * :call GetEngine()
    autocmd InsertLeave * :call SetNormalModeEngine()
augroup END

augroup insertentering
    au!
    autocmd InsertEnter * :call SetInsertModePreviousEngine()
augroup END

