syntax enable
set nocompatible
if empty(glob('/usr/share/nvim/runtime/autoload/plug.vim'))
   silent !curl -fLo /usr/share/nvim/runtime/autoload/plug.vim --create-dirs
     \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
   endif

let mapleader = ","


autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
 \| PlugInstall --sync | source $MYVIMRC
 \| endif

call plug#begin()
Plug 'preservim/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'neovim/nvim-lspconfig'
Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
Plug 'dracula/vim', { 'as': 'dracula' } 
Plug 'ellisonleao/glow.nvim'
Plug 'glepnir/dashboard-nvim'
Plug 'liuchengxu/vim-clap'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'jiangmiao/auto-pairs'
Plug 'mattn/emmet-vim'
Plug 'sheerun/vim-polyglot'
Plug 'airblade/vim-gitgutter'
Plug 'nvim-lua/plenary.nvim'
Plug 'sindrets/diffview.nvim'
Plug 'bagrat/vim-buffet'
Plug 'pakutoma/toggle-terminal'
call plug#end()
colorscheme dracula
set termguicolors
set completeopt=menuone,noselect,noinsert
set shortmess+=c
let g:toggle_terminal#command = 'bash'

inoremap <c-c> <ESC>
noremap <silent> n <Cmd>execute('normal! ' . v:count1 . 'n')<CR>
            \<Cmd>lua require('hlslens').start()<CR>
noremap <silent> N <Cmd>execute('normal! ' . v:count1 . 'N')<CR>
            \<Cmd>lua require('hlslens').start()<CR>
noremap * *<Cmd>lua require('hlslens').start()<CR>
noremap # #<Cmd>lua require('hlslens').start()<CR>
noremap g* g*<Cmd>lua require('hlslens').start()<CR>
noremap g# g#<Cmd>lua require('hlslens').start()<CR>

nnoremap <Tab> :tabnext<CR>
nnoremap <S-Tab> :bp<CR>
nnoremap <Leader><Tab> :Bw<CR>
nnoremap <Leader><S-Tab> :Bw!<CR>
nnoremap <C-t> :tabnew split<CR>
nnoremap <silent> <C-x> :ToggleTerminal<CR>



nmap <leader>1 <Plug>BuffetSwitch(1)
nmap <leader>2 <Plug>BuffetSwitch(2)
nmap <leader>3 <Plug>BuffetSwitch(3)
nmap <leader>4 <Plug>BuffetSwitch(4)
nmap <leader>5 <Plug>BuffetSwitch(5)
nmap <leader>6 <Plug>BuffetSwitch(6)
nmap <leader>7 <Plug>BuffetSwitch(7)
nmap <leader>8 <Plug>BuffetSwitch(8)
nmap <leader>9 <Plug>BuffetSwitch(9)
nmap <leader>0 <Plug>BuffetSwitch(10)


let g:python3_host_prog = '/usr/bin/python3'
let g:python_host_prog='/usr/bin/python2'

map <C-n> :NERDTreeToggle<CR>
let g:lightline = { 'colorscheme': 'dracula' }
let g:dracula_colorterm = 0
"hi Normal guibg=NONE ctermbg=NONE " if you want to have nvim work with terminal transparency
