syntax enable
call plug#begin()
Plug 'preservim/nerdtree'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2'
Plug 'HansPinckaers/ncm2-jedi'
Plug 'ncm2/ncm2-bufword'
Plug 'itchyny/lightline.vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'neovim/nvim-lspconfig'
Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
Plug 'dracula/vim', { 'as': 'dracula' } 
Plug 'ellisonleao/glow.nvim'
Plug 'glepnir/dashboard-nvim'
Plug 'kevinhwang91/nvim-hlslens'
Plug 'liuchengxu/vim-clap'
Plug 'ahmedkhalf/project.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
call plug#end()
colorscheme dracula
set termguicolors
autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=menuone,noselect,noinsert
set shortmess+=c
inoremap <c-c> <ESC>
let ncm2#popup_delay = 5
let ncm2#complete_length = [[1, 1]]
let g:ncm2#matcher = 'substrfuzzy'
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

let g:jedi#auto_initialization = 1
let g:jedi#completions_enabled = 0
let g:jedi#auto_vim_configuration = 0
let g:jedi#smart_auto_mappings = 0
let g:jedi#popup_on_dot = 0
let g:jedi#completions_command = ""
let g:jedi#show_call_signatures = "1"
let g:python3_host_prog = '/usr/bin/python3'
let g:python_host_prog='/usr/bin/python2'

map <C-n> :NERDTreeToggle<CR>
let g:lightline = { 'colorscheme': 'dracula' }
