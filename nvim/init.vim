syntax enable
call plug#begin()
Plug 'preservim/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'neovim/nvim-lspconfig'
Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
Plug 'dracula/vim', { 'as': 'dracula' } 
Plug 'ellisonleao/glow.nvim'
Plug 'glepnir/dashboard-nvim'
Plug 'liuchengxu/vim-clap'
Plug 'ahmedkhalf/project.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'jiangmiao/auto-pairs'
Plug 'mattn/emmet-vim'
call plug#end()
colorscheme dracula
set termguicolors
set completeopt=menuone,noselect,noinsert
set shortmess+=c
inoremap <c-c> <ESC>
noremap <silent> n <Cmd>execute('normal! ' . v:count1 . 'n')<CR>
            \<Cmd>lua require('hlslens').start()<CR>
noremap <silent> N <Cmd>execute('normal! ' . v:count1 . 'N')<CR>
            \<Cmd>lua require('hlslens').start()<CR>
noremap * *<Cmd>lua require('hlslens').start()<CR>
noremap # #<Cmd>lua require('hlslens').start()<CR>
noremap g* g*<Cmd>lua require('hlslens').start()<CR>
noremap g# g#<Cmd>lua require('hlslens').start()<CR>

lua << EOF
  require("project_nvim").setup {
  }
EOF

let g:python3_host_prog = '/usr/bin/python3'
let g:python_host_prog='/usr/bin/python2'

map <C-n> :NERDTreeToggle<CR>
let g:lightline = { 'colorscheme': 'dracula' }
