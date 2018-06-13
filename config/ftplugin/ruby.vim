" Bindings for Ruby and Rails
"
"   <leader>rd
"     Add debugging line (binding.pry)
"     NORMAL MODE
"
"   <leader>rD
"     Go to next debugging line (binding.pry)
"     NORMAL MODE
"
if(exists('g:vimo#layers#rails#disabled') && g:vimo#layers#rails#disabled)
  finish
endif

nnoremap <leader>rd obinding.pry<esc>
nnoremap <leader>rD /binding.pry<cr>
