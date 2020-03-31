" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
" Plug 'tpope/vim-sensible'
Plug 'sainnhe/edge'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'rust-lang/rust.vim'
Plug 'rakr/vim-one'
Plug 'ayu-theme/ayu-vim'

Plug 'airblade/vim-rooter'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

Plug 'tpope/vim-commentary'

Plug 'sheerun/vim-polyglot'
Plug 'alvan/vim-closetag'
Plug 'jiangmiao/auto-pairs'

Plug 'hylang/vim-hy'
Plug 'psf/black'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
  let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver']

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

command! -nargs=0 Prettier :CocCommand prettier.formatFile

set background=dark

let g:airline_theme = 'minimalist'

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_powerline_fonts = 1

let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1

set termguicolors
"let ayucolor="light"  " for light version of theme
"let ayucolor="mirage" " for mirage version of theme
"let ayucolor="dark"   " for dark version of theme
colorscheme one

set shiftwidth=2

"set guifont=DroidSansMono_Nerd_Font:h11
set guifont=DroidSansMono\ Nerd\ Font:h11

set number relativenumber

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

map <C-n> :NERDTreeToggle<CR>
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>

" let g:closetag_xhtml_filetypes = 'xhtml,javascript.jsx,jsx,javascript'
" let g:closetag_xhtml_filetypes = 'xhtml,jsx'

let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.erb,*.jsx,*.js"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.erb,*.js'
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_shortcut = '>'
let g:closetag_close_shortcut = '<leader>>'

let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ 'javascript': 'jsxRegion',
    \ }
