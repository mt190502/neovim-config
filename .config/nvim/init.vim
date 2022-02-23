"##############################
"#
"## Vim Config
"#
"##############################
:set number                                                    " Line Numbers
:set autoindent                                                " Auto Indent
:set tabstop=4                                                 " 
:set shiftwidth=4                                              " 
:set smarttab                                                  " 
:set softtabstop=4                                             " 
:set mouse=a                                                   " 
:set encoding=utf-8                                            " 
:set background=dark                                           " 
:set termguicolors                                             " 
scriptencoding=utf-8

autocmd BufReadPost * if @% !~# '\.git[\/\\]COMMIT_EDITMSG$' && line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif 
"autocmd TermOpen * startinsert                                " Terminal open insert mode
autocmd TermClose * :q!                                        " Terminal close directly





"##############################
"#
"## VimPlug call
"#
"##############################
call plug#begin()                                               " Call Plugin Manager

Plug 'akinsho/bufferline.nvim'									" TopBar
Plug 'andweeb/presence.nvim'									" Discord RPC
Plug 'hrsh7th/cmp-buffer'										" ...
Plug 'hrsh7th/cmp-cmdline'										" ...
Plug 'hrsh7th/cmp-nvim-lsp'										" ...
Plug 'hrsh7th/cmp-path'											" ...
Plug 'hrsh7th/nvim-cmp'											" Completion Menu
Plug 'kyazdani42/nvim-tree.lua'									" File Explorer
Plug 'kyazdani42/nvim-web-devicons'								" File Explorer Icons
Plug 'lewis6991/gitsigns.nvim'									" Github
Plug 'lukas-reineke/indent-blankline.nvim'						" BlankLine
Plug 'neoclide/coc.nvim'										" Auto Completion
Plug 'neovim/nvim-lspconfig'									" LSP
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}		" Language Server
Plug 'onsails/lspkind-nvim'										" Auto Completion
Plug 'rafi/awesome-vim-colorschemes'							" Color Schemes
Plug 'ray-x/lsp_signature.nvim'									" Language Server
Plug 'ryanoasis/vim-devicons'									" Developer Icons
Plug 'vim-airline/vim-airline'									" Status Bar
Plug 'vim-airline/vim-airline-themes'							" Status Bar Themes
Plug 'windwp/nvim-autopairs'									" Auto Brackets

call plug#end()                                                 " Close Plugin Manager

:colorscheme ayu                                                " Colorscheme change after load 'awesome-vim-colorschemes' plugin. 
                                                                " My favourite themes: ayu delek desert industry murphy pablo slate zellner





"##############################
"#
"## Keybindings
"#
"##############################
nnoremap <C-q> :q!<CR>
nnoremap <C-c> :sp<bar>term<cr><c-w>J:resize10<cr>i
nnoremap <C-s> :w<CR>
nnoremap <C-n> :NvimTreeToggle<CR>
nnoremap <C-p> :PlugInstall<CR>





"##############################
"#
"## Module Configurations
"#
"##############################

" AutoPairs
:luafile ~/.config/nvim/configs/autopairs.lua
lua require'nvim-autopairs'.setup{}


" NvimTree
source ~/.config/nvim/configs/nvimtree.vim
lua require'nvim-tree'.setup{}


" Discord RPC
source ~/.config/nvim/configs/discordrpc.vim


" AirLine
source ~/.config/nvim/configs/airline.vim


" lspconfig
set completeopt=menu,menuone,noselect
:luafile ~/.config/nvim/configs/lspconfig.lua


" BlankLine
:luafile ~/.config/nvim/configs/blankline.lua


" bufferline
":luafile ~/.config/nvim/configs/bufferline.lua
lua require'bufferline'.setup{}
