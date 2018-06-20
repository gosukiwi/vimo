" [Ruby]
" These settings are specific for the Ruby filetype.

if(exists('g:vimo#layers#rails#disabled') && g:vimo#layers#rails#disabled)
  finish
endif

":mapping Add debugging line (binding.pry)
nnoremap <leader>rd obinding.pry<esc>

":mapping Go to next debugging line (binding.pry)
nnoremap <leader>rD /binding.pry<cr>
