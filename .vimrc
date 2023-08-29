" user config
set textwidth=80
set number
set showbreak=>>>>
set mouse=a
set ruler
set ts=4
set expandtab
set shiftwidth=4
set autoindent
set cursorline
syntax enable

" save undo data in relative directory
if !isdirectory("./.vim")
    call mkdir("./.vim", "", 0777)
endif
if !isdirectory("./.vim/undo")
    call mkdir("./.vim/undo", "", 0777)
endif
set undodir=./.vim/undo
set undofile

" backup files location
set backup
if !isdirectory("./.vim/backups")
    call mkdir("./.vim/backups", "", 0777)
endif
set backupdir=./.vim/backups

" ========================== VIMPLUG ==========================
" Vim-Plug plugin manager
call plug#begin()

" ======================== PLUGIN NOTES ========================
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'
" Make sure you use single quotes
" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
" Plug 'junegunn/vim-easy-align'
" Any valid git URL is allowed
" Plug 'https://github.com/junegunn/vim-github-dashboard.git'
" Multiple Plug commands can be written in a single line using | separators
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
" On-demand loading
" Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
" Using a non-default branch
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
" Plug 'fatih/vim-go', { 'tag': '*' }
" Plugin options
" Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
" Plugin outside ~/.vim/plugged with post-update hook
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Unmanaged plugin (manually installed and updated)
" Plug '~/my-prototype-plugin'

" ======================== PLUGIN LIST ========================
" automatically adds matching paren, quote, bracket, etc.
Plug 'jiangmiao/auto-pairs' 
" file explorer
Plug 'preservim/nerdtree' 
" color theme
Plug 'morhetz/gruvbox' 
" better variable highlighting
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} 
" git support for GUI + extras
Plug 'airblade/vim-gitgutter' 
let g:gitgutter_enabled = 1
let g:gitgutter_map_keys = 0
" increased functionality of .
Plug 'tpope/vim-repeat' 
" increased functionality for f shortcut
Plug 'rhysd/clever-f.vim' 
" adds A and I functionality for visual blocks
Plug 'kana/vim-niceblock' 
" powerful regex tool; e.g. :?start-search?;/end-search/s/search-term/replacement-term
Plug 'markonm/traces.vim' 
" underlines all occurrences of the word under cursor
Plug 'itchyny/vim-cursorword' 
" highlights part of code that is copied using yank
Plug 'machakann/vim-highlightedyank' 
" allows movement of selections using h j k l movement keys using shift
Plug 'matze/vim-move' 
" changes default modifier key to shift for vim-move plug
let g:move_key_modifier_visualmode = 'S' 
" status
Plug 'vim-airline/vim-airline' 
" sneak motion using 's'
Plug 'justinmk/vim-sneak' 
" surround
Plug 'tpope/vim-surround'
" one half light colorscheme
Plug 'sonph/onehalf', { 'rtp': 'vim' }

" ======================== PLUGIN INIT ========================
" Initialize plugin system
call plug#end()

colorscheme gruvbox
set background=dark

" colorscheme dynamic themes
" if strftime('%H') > 5 && strftime('%H') < 18
"     let g:gruvbox_contrast_light = 'hard'
"     colorscheme gruvbox
"     set background=light
" else
"     colorscheme gruvbox
"     set background=dark
" endif

" NERDTree
let NERDTreeShowLineNumbers=1

"install plugins by using :PlugInstall command

