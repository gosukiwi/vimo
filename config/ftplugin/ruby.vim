" bindings for Ruby
"
"   <leader>rd
"     Add debugging line (binding.pry)
"     NORMAL MODE
"
"   <leader>rD
"     Go to next debugging line (binding.pry)
"     NORMAL MODE
"
"   <leader>rf
"     Find text under the cursor (or selected) in all Ruby files
"     NORMAL MODE / VISUAL MODE
"
"   <leader>rn
"     Go to next match
"     NORMAL MODE
"
"   <leader>rp
"     Go to previous match
"     NORMAL MODE
"

nnoremap <leader>rd obinding.pry<esc>
nnoremap <leader>rD /binding.pry<cr>

" use `ag` as default "grep" program
setlocal grepprg=ag\ --ruby

" grep the selected text among all `*.rb` files
vnoremap <leader>rf y:execute "grep \"" . escape(@", '"') . "\""<CR><CR>:cw<CR>
nnoremap <leader>rf yaw:execute "grep \"" . escape(@", '"') . "\""<CR><CR>:cw<CR>

" next and before the searches
nnoremap <leader>rn :cn<CR>
nnoremap <leader>rp :cp<CR>
