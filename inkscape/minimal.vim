set ft=tex
set noshowmode

function! QuitAndPaste()
  let buffer_content = getline(1, '$')
  if join(buffer_content) == "$$"
    silent! execute "!osascript ~/.config/inkscape/paste.scpt false &"
  else
    normal ggVG"+y
    silent! execute "!osascript ~/.config/inkscape/paste.scpt true &"
  endif
  wq
endfunction

" Start insert mode between $$'s
autocmd BufEnter * startinsert | call cursor(1, 2)

"Text conceal
autocmd vimenter * ++nested set conceallevel=2
autocmd vimenter * ++nested set concealcursor=""
autocmd vimenter * ++nested hi! link VertSplit Comment

"Mappings
inoremap wq <Esc>:call QuitAndPaste()<CR>
nnoremap wq :call QuitAndPaste()<CR>
inoremap qw <Esc>:call QuitAndPaste()<CR>
nnoremap qw :call QuitAndPaste()<CR>

"Set up any additional config bits or load plugins...
