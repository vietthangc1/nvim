packloadall

syntax on
set clipboard=unnamedplus
set number
set relativenumber
set encoding=utf8
set guifont=*
set linespace=5
set hlsearch
set tabstop=4
set shiftwidth=4
set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()
set nofoldenable
set foldlevel=99

nnoremap <silent> <leader>df :let @/ = ""<CR>
call plug#begin(stdpath('data') . '/plugged')
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
" Autosave
Plug '907th/vim-auto-save'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" On-demand loading
Plug 'preservim/nerdTree'                     " File browser  
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'preservim/nerdcommenter' " use <leader>c-space

" Plug for open lazygit in nvim
Plug 'kdheepak/lazygit.nvim'

" Icons
Plug 'ryanoasis/vim-devicons' 

" Status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Terminal
Plug 'voldikss/vim-floaterm'

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

" Git Blame
Plug 'zivyangll/git-blame.vim'

" Intellisense
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'

" Source version control
Plug 'tpope/vim-fugitive'

" Debug
Plug 'puremourning/vimspector'

" Prettier
" Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }

call plug#end()
" You can revert the settings after the call like so:
"   filetype indent off   " Disable file-type-specific indentation
"   syntax off            " Disable syntax highlighting

" Other setting
for setting_file in split(glob(stdpath('config').'/settings/*.vim'))
  execute 'source' setting_file
endfor

" set not defualt comment mode
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o


" Shift tab
" for command mode
nnoremap <S-Tab> <<
" for insert mode
inoremap <S-Tab> <C-d>
" Open definition in new tab
nnoremap <silent> <leader>d 	<C-w><C-]><C-w>T

" Vim Script
colorscheme tokyonight-night

