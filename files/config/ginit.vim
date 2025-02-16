set mouse=a
" Right margin
set colorcolumn=120

set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set number
colorscheme habamax

" Session save
nmap <leader>ss   :mks! ./.session.vis<cr>
" Data in session
set sessionoptions=buffers,curdir,folds,tabpages

if exists(':GuiFont')
    " Use GuiFont! to ignore font errors
    GuiFont "JetBrainsMonoNL Nerd Font":h18
endif
