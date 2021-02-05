call plug#begin('~/.vim/plugged')
" 简单移动
Plug 'easymotion/vim-easymotion'
" 环绕
Plug 'tpope/vim-surround'
" 参数文本对象
Plug 'vim-scripts/argtextobj.vim'
" yank高亮
Plug 'machakann/vim-highlightedyank'
call plug#end()


" 按键映射
let mapleader=" "
nnoremap <Leader>f :Format<CR>:OR<CR>:w<CR>
nnoremap <silent> <Leader>T :NERDTreeToggle<CR>
nnoremap <silent> <Leader>M :call quickui#menu#open()<CR>
nnoremap <silent> <Leader>R :Startify<CR>

" 智能区分大小写
set smartcase
set scrolloff=10
set sidescrolloff=15

