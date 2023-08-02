" Neovim config by Şefik Efe

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim-Plug for managing plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.config/nvim/plugged')
" {{ Basics }}
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-commentary'                                                 " For Commenting gcc & gc
Plug 'tpope/vim-surround'                                                   " Surrounding ysw)
"Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }    " Markdown Preview
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" Plug 'neoclide/coc.nvim', {'branch': 'release'}                             " Auto Completion
Plug 'preservim/tagbar'                                                     " Tagbar for code navigation

" {{ Nerd tree }}
Plug 'preservim/nerdtree'                                                   " NerdTree
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'                              " Highlighting Nerdtree
Plug 'ryanoasis/vim-devicons'                                               " Developer Icons

" {{ Syntax highlighting and colors }}
"Plug 'TovarishFin/vim-solidity'
Plug 'dracula/vim', { 'as': 'dracula' }                                     " Dracula color theme
Plug 'norcalli/nvim-colorizer.lua'
" Works on Vim but not on NeoVim Plug 'ap/vim-css-color'                                                     " CSS Color Preview
Plug 'EdenEast/nightfox.nvim'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'sainnhe/everforest'
call plug#end()

set termguicolors
lua << EOF
require'colorizer'.setup()

require'nvim-treesitter.configs'.setup {
  ensure_installed = "all", --
  sync_install = false, -- Install parsers synchronously (only applied to `ensure_installed`)
  auto_install = true, -- Automatically install missing parsers when entering buffer
  ignore_install = { "" }, -- List of parsers to ignore installing
  highlight = {
    enable = true,
    disable = { "" }, -- list of languages that will be disabled
    additional_vim_regex_highlighting = false,
  },
  indent = { enable = true, disable = { "yaml" } }
}

require('nightfox').setup({
  options = {
    styles = {
    comments = "italic",     -- Value is any valid attr-list value `:help attr-list`
    conditionals = "bold",
    functions = "bold",
    keywords = "bold",
    operators = "bold",
    }
  }
})
EOF

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set path+=**					" Searches current directory recursively.
set wildmenu					" Display all matches when tab complete.
set incsearch					" start highlighting while typing a search pattern
set hidden                      " Needed to keep multiple buffers open
set number relativenumber       " Display line numbers
set clipboard+=unnamedplus      " Copy/paste between vim and other programs.
"syntax enable
set number relativenumber       " line nums
set guicursor=                  " block shaped cursor
set nu                          " instead of 0, tell the real line number
set nobackup                    " No auto backups
set noswapfile                  " No swap
set nohlsearch                  " unhighlight results after search
set noerrorbells                " don't bell when an error popped up
set nowrap                      " no line wrapping (go ahead and continue in the same line)
set termguicolors
set scrolloff=3                 " start scrolling down before the cursor comes at the end of the screen
set encoding=UTF-8
let g:rehash256 = 1
if !has('gui_running')
    set t_Co=256                " Set if term supports 256 colors.
endif
set laststatus=2                " Always show status bar at the last window.
" let g:neovide_transparency=0.50
set splitbelow splitright

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype plugin indent on
set autoindent
set smartindent
set softtabstop=4
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
set smarttab

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Mouse Scrolling
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set mouse=nicr
set mouse=a

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Open terminal inside Vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <Leader>tt :vnew term://zsh<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Color scheme settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:lightline = {'colorscheme': 'wombat'}
colorscheme nightfox
hi Normal guibg=NONE ctermbg=NONE

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NERD Tree
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let NERDTreeShowLineNumbers=1
let NERDTreeShowHidden=1
let NERDTreeMinimalUI = 1
let g:NERDTreeWinSize=34

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Key maps
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"noremap <C-f> :NERDTreeToggle<CR>
"noremap <C-x> :TagbarToggle<CR>
""noremap <C-v> :vnew<CR>
"noremap <C-q> :q<CR>
"
"" Clear last used search pattern.
""noremap <C-c> :let @/=""<CR>
"
""noremap <C-n> :tabn<CR>
""imap <C-n> <Esc>:tabn<CR>
"noremap <C-t> :tabnew<CR>
"imap <C-t> <Esc>:tabnew<CR>
"
"noremap <C-left> <Esc><Up>$ 
"
"imap <C-Del> <space> <C-o>dw<BS>
"imap <C-S-Del> <Esc>"_ddi<Right><CR>
"
"nnoremap dd "_dd
"nnoremap cc dd
"
"imap <C-a> <Esc>ggVG
"noremap <C-a> <Esc>ggVG 

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Custom functions
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"fun! TrimWhiteSpace()
"	let l:save = winsaveview()
"	keeppatterns %s/\s\+$//e
"	call winrestview(l:save)
"endfun
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Autocommand groups
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup AUTO_COMMANDS
	autocmd!
""	autocmd BufWritePre * :call TrimWhiteSpace()
    autocmd VimEnter * :let @/=""
augroup END

