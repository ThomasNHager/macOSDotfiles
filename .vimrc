" vim:foldmethod=marker
 
" ----------------------------------
"  Vundle Requirements
" ----------------------------------

" Vundle Requirements {{{

set nocompatible
filetype off

"Vim Polyglot
let g:polyglot_disabled = ['lua']

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" }}}

" ----------------------------------
"  Plugins
" ----------------------------------

" Plugins {{{

"Vundle
Plugin 'gmarik/Vundle.vim' "Setup for Vundle

"Synatx
Plugin 'dense-analysis/ale' "Linting and syntax checking - have to install linters
Plugin 'sheerun/vim-polyglot' "Syntax highlighting
Plugin 'uiiaoo/java-syntax.vim' "Syntax highlighting for java
Plugin 'shmup/vim-sql-syntax' "Syntax highlighting for SQL
Plugin 'prabirshrestha/vim-lsp' "Language server
Plugin 'prabirshrestha/asyncomplete.vim' "Autocomplete
Plugin 'prabirshrestha/asyncomplete-lsp.vim' "Lsp integration
Plugin 'prabirshrestha/asyncomplete-file.vim' "File path auto complete

"Code Running
Plugin 'jpalardy/vim-slime' "Allows for sending code to terminal
Plugin 'jalvesaq/Nvim-R' "Literally a full R IDE
Plugin 'tpope/vim-dadbod' "SQL IDE
Plugin 'kristijanhusak/vim-dadbod-ui' "UI For vim dadbod

"Git Integration
Plugin 'tpope/vim-fugitive' "Git integration
Plugin 'airblade/vim-gitgutter' "Git status in the gutter

"File Navigation
Plugin 'Yggdroot/LeaderF' "Super powerful finder
Plugin 'chriszarate/yazi.vim' "Vim integration for yazi

"Quality of Life
Plugin 'tmhedberg/SimpylFold' "Automatic folding for imports, functions in python
Plugin 'lunarwatcher/auto-pairs' "Quotes and brackets in pairs
Plugin 'chrisbra/csv.vim' "Allows for editing CSVs, also view R objects
Plugin 'Yggdroot/indentLine' "Handy little indent display
Plugin 'mbbill/undotree' "Undo tree
Plugin 'tpope/vim-surround' "Surrounds things with quotes
Plugin 'ap/vim-css-color' "Loads CSS colors in real time
Plugin 'romainl/vim-cool' "Automatically unhighlights after search
Plugin 'wellle/context.vim' "Shows the current loop or funciton
Plugin 'tpope/vim-commentary' "Allows for commenting with motions
Plugin 'tpope/vim-unimpaired' "Adds some bracket mappings
Plugin 'christoomey/vim-tmux-navigator' "Integration between Vim and Tmux 

"Asthetic
Plugin 'junegunn/rainbow_parentheses.vim' "Colored parentheses
Plugin 'catppuccin/vim' "Catppuccin!
Plugin 'itchyny/lightline.vim' "Status bar without the annoying characters
Plugin 'mengelbrecht/lightline-bufferline'
Plugin 'jszakmeister/vim-togglecursor' "Different cursors for different modes
Plugin 'ryanoasis/vim-devicons' "Shows symbols in Nerd Tree
Plugin 'mhinz/vim-startify' "Start screen for vim
Plugin 'machakann/vim-highlightedyank' "Highlight on yank
Plugin 'psliwka/vim-smoothie' "Smooth scrolling

"Not Currently In Use
" Plugin 'kristijanhusak/vim-carbon-now-sh' "Allows for sending code screenshots to carbon
" Plugin 'tpope/vim-vinegar' "Enhances netrw
" Plugin 'cosminadrianpopescu/vim-sql-workbench'
" Plugin 'vim-airline/vim-airline' "Status and buffer bar
" Plugin 'justinmk/vim-sneak'  "Allows for jumping to two letter cominbations
" Plugin 'Xuyuanp/nerdtree-git-plugin' "Shows git status in Nerdtree
" Plugin 'PhilRunninger/nerdtree-visual-selection' "Mass file operation in nerdtree
" Plugin 'tiagofumo/vim-nerdtree-syntax-highlight' "Shows file types in Nerd Tree
" Plugin 'Xuyuanp/nerdtree-git-plugin' "Shows git status in Nerdtree
" Plugin 'junegunn/vim-peekaboo' "Shows the current contents of your registers
" Plugin 'ycm-core/YouCompleteMe' "Multi language auto complete - several install requirements
" Plugin 'yegappan/lsp' "Language server
" Plugin 'girishji/vimcomplete' "Autocomplete

call vundle#end()
filetype plugin indent on

" }}}

" ----------------------------------
"  Default Vim Configurations
" ----------------------------------

" Default Vim Configurations {{{

"Coloring
set termguicolors
colorscheme catppuccin_mocha


"Relative Numbers
set number relativenumber

"Set leader
let mapleader = ' '

"Highlighting
syntax on
let python_highlight_all=1

"Put Swapfiles in a separate directory
set swapfile
set dir=~/tmp/
set backupdir=~/tmp/

"Always split screen below and to the right
set splitbelow
set splitright

"Highlight the active line number, fade the others
set cursorline
set cursorlineopt=number
highlight lineNr term=bold cterm=NONE ctermbg=none  ctermfg=none gui=bold
highlight CursorLine term=bold cterm=NONE ctermbg=none  ctermfg=none gui=bold
highlight CursorLineNr term=bold cterm=none ctermbg=blue ctermfg=yellow gui=bold

"Split Navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Split Navigations for Terminal
tnoremap <C-j> <C-w>j
tnoremap <C-k> <C-w>k
tnoremap <C-h> <C-w>h
tnoremap <C-l> <C-w>l

"Set Indent Preference
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set autoindent
set fileformat=unix

autocmd FileType python set shiftwidth=4 softtabstop=4 tabstop=4 expandtab
autocmd FileType vim set shiftwidth=4 softtabstop=4 tabstop=4 expandtab

"Set UTF-8
set encoding=utf-8

"Spellcheck
autocmd FileType text set spell
autocmd FileType markdown set spell
hi SpellBad gui=undercurl guifg=NONE guibg=NONE ctermfg=NONE ctermbg=NONE cterm=undercurl guisp=RED
hi SpellCap gui=undercurl guifg=NONE guibg=NONE ctermfg=NONE ctermbg=NONE cterm=undercurl guisp=BLUE

"Rehighlight After Indent In Visual
vnoremap < <gv
vnoremap > >gv

"Code Column
autocmd FileType python set colorcolumn=80
autocmd FileType r set colorcolumn=80
autocmd FileType java set colorcolumn=80

"Longer undo history
set history=1000

"Auto reload files changed outside vim
set autoread

"Break lines at nice places instead of linewrap
set linebreak
set breakindent
set breakindentopt=shift:2,sbr
set showbreak=>>

"Scroll at 8 lines from the margin
set scrolloff=6

"Search settings
"Search while typing, highlight results, only care about case when typed
set incsearch
set hlsearch
set ignorecase
set smartcase

"Fold column
set foldcolumn=2
set foldmethod=marker

"Move lines nicely in visual mode
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

"Delete for real
nnoremap <leader>d "_d
vnoremap <leader>d "_d
nnoremap <leader>D "_D
vnoremap <leader>D "_D

nnoremap <leader>x "_x
vnoremap <leader>x "_x

nnoremap <leader>c "_c
vnoremap <leader>c "_c
nnoremap <leader>C "_C
vnoremap <leader>C "_C

"Paste over something in visual mode
xnoremap <leader>p "_dP
xnoremap <leader>P "_d"+P

"Yank and put to system clipboard
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y "+Y
vnoremap <leader>Y "+Y

nnoremap <leader>p "+p
nnoremap <leader>P "+P

"Buffer management
set hidden

"Don't cycle through terminal buffers
autocmd TerminalOpen * if bufwinnr('') > 0 | setlocal nobuflisted | endif
autocmd TerminalOpen * setlocal nobuflisted

"Control C to go to normal mode
inoremap <C-c> <Esc>

"Capital Q Sucks
nnoremap Q <nop>

"Terminal binds
nnoremap <silent><leader>t :vert term<CR>

"Hide the insert/visual line in the command bar
set noshowmode

"Grep the item under the cursor
nnoremap gw :vim <cword> % ./* <cr>

"Change the vimdiff colorscheme
hi DiffAdd      gui=none    guifg=NONE          guibg=#a6e3a1
hi DiffChange   gui=none    guifg=NONE          guibg=#f9e2af
hi DiffDelete   gui=bold    guifg=NONE          guibg=#eba0ac
hi DiffText     gui=none    guifg=NONE          guibg=#89dceb

"Set Y to y$
nnoremap Y y$

"Center cursor on half page moves
"nnoremap <C-d> <C-d>zz
"nnoremap <C-d> <C-d>zz

"Tmux configuration
if !has('gui_running') && &term =~ '^\%(screen\|tmux\)'
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif

" }}}

" ----------------------------------
"  Plugin Configs
" ----------------------------------

" Plugin Configs {{{

"Synatx
" -------------------------
"Ale Config
"Turn off virtual text, look for venvs, change error/warning sign and color
let g:ale_virtualtext_cursor = 'disabled'
let g:ale_python_auto_virtualenv = 1
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
highlight ALEErrorSign ctermbg=NONE ctermfg=RED 
highlight ALEWarningSign ctermbg=NONE ctermfg=YELLOW 
highlight ALEWarning guibg=NONE guifg=NONE cterm=undercurl gui=undercurl guisp=YELLOW
highlight ALEError guibg=NONE guifg=NONE cterm=undercurl gui=undercurl guisp=RED
let g:ale_linters_ignore = {'python': ['mypy', 'pylint']}

"Vim LSP
if executable('vim-language-server')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'vimls',
        \ 'cmd': {server_info->['vim-language-server', '--stdio']},
        \ 'allowlist': ['vim'],
        \ 'initialization_options': {
        \   'vimruntime': $VIMRUNTIME,
        \   'runtimepath': &rtp,
        \   }
        \ })
endif

if executable('r')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'r',
        \ 'cmd': {server_info->['r --slave -e languageserver::run()']},
        \ 'allowlist': ['r'],
        \ })
endif

if executable('pyright')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'pyright',
        \ 'cmd': {server_info->['pyright-langserver', '--stdio', '--venv']},
        \ 'allowlist': ['python'],
        \ })
endif

if executable('jdtls')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'jdtls',
        \ 'cmd': {server_info->['jdtls', '-data', getcwd()]},
        \ 'allowlist': ['java'],
        \ })
endif

if executable('bash-language-server')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'bashls',
        \ 'cmd': {server_info->[&shell, &shellcmdflag, 'bash-language-server start']},
        \ 'allowlist': ['sh'],
        \ })
endif

if executable('sqls')
    augroup LspSqls
        autocmd!
        autocmd User lsp_setup call lsp#register_server({
        \   'name': 'sqls',
        \   'cmd': {server_info->['sqls']},
        \   'whitelist': ['sql'],
        \ })
    augroup END
endif

function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete
    if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif
    let g:lsp_format_sync_timeout = 1000
    autocmd! BufWritePre *.rs,*.go call execute('LspDocumentFormatSync')
    
    " refer to doc to add more commands
endfunction

augroup lsp_install
    au!
    " call s:on_lsp_buffer_enabled only for languages that has the server registered.
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END

let g:lsp_diagnostics_enabled = 0
nnoremap <silent><leader>gd :LspDefinition<CR>
nnoremap <silent><leader>gs :LspDocumentSymbolSearch<CR>
nnoremap <silent><leader>gS :LspWorkspaceSymbolSearch<CR>
nnoremap <silent><leader>gi :LspImplementation<CR>
nnoremap <silent><leader>rn :LspRename<CR>
nnoremap <silent><leader>ho :LspHover<CR>

"Asyncomplete vim
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"
inoremap <expr> <cr> pumvisible() ? asyncomplete#close_popup() . "\<cr>" : "\<cr>"

au User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#file#get_source_options({
    \ 'name': 'file',
    \ 'allowlist': ['*'],
    \ 'priority': 10,
    \ 'completor': function('asyncomplete#sources#file#completor')
    \ }))

" allow modifying the completeopt variable, or it will
" be overridden all the time
" Sets up popup window
let g:asyncomplete_auto_completeopt = 0

set completeopt=menuone,noinsert,noselect,preview

autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

"Code Running
" -------------------------
"Vim Slime
let g:slime_target = "tmux"
let g:slime_default_config = {"socket_name": "default", "target_pane": "{last}"}
" let g:slime_python_ipython = 1

"Nvimr
"Turn off underscore to assign arrow
"Disable conflicting keybinds
let R_assign = 0 
let R_disable_cmds = ['RDSendLine']

"Vim dadbod 
autocmd FileType sql setlocal omnifunc=vim_dadbod_completion#omni
autocmd FileType dbui setlocal omnifunc=vim_dadbod_completion#omni
let g:db_ui_use_nerd_fonts = 1


"Git Integration
" -------------------------
"Vim Fugitive
nnoremap <silent> <leader>gs :Git<CR>


"File Navigation
" -------------------------
"Leader f
let g:Lf_WindowPosition = 'popup'
nnoremap <silent><leader>ro :Leaderf mru<CR>
nnoremap <silent><leader>l :Leaderf line<CR>
nnoremap <silent><leader>L :LeaderfLineAll<CR>
nnoremap <silent><leader>rg :Leaderf rg<CR>
nnoremap <silent><leader>qf :Leaderf quickfix<CR>

"Yazi vim
nnoremap <silent> - :Yazi<cr>
nnoremap <silent> _ :YaziWorkingDirectory<cr>

"Quality of Life
" -------------------------
"Autopairs
"Rebind hotkey to avoid conflict
let g:AutoPairsShortcutToggle = '<F5>'
let g:AutoPairsMapBS = 1

"Indent Line
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

"Undo tree
nnoremap <leader>uu :UndotreeToggle<CR>
if has("persistent_undo") "Persistent undo
   let target_path = expand('~/.undodir')
    " create the directory and any parent directories
    " if the location does not exist.
    if !isdirectory(target_path)
        call mkdir(target_path, "p", 0700)
    endif

    let &undodir=target_path
    set undofile
endif

if !exists('g:undotree_HighlightChangedText')
    let g:undotree_HighlightChangedText = 0
endif

"Asthetic
" -------------------------
"Lightline
set laststatus=2
let g:lightline = {'colorscheme': 'catppuccin_mocha'}
set showtabline=2
let g:lightline#bufferline#show_number = 1
let g:lightline#bufferline#shorten_path = 0
let g:lightline#bufferline#unnamed = '[No Name]'

let g:lightline.tabline = {'left': [['buffers']]}
let g:lightline.component_expand = {'buffers': 'lightline#bufferline#buffers'}
let g:lightline.component_type = {'buffers': 'tabsel'}

let g:lightline.separator = { 'left': "\ue0b0", 'right': "\ue0b2" }
let g:lightline.subseparator = { 'left': "\ue0b1", 'right': "\ue0b3" }
let g:lightline.tabline_separator = { 'left': "\ue0b0", 'right': "\ue0b2" }
let g:lightline.tabline_subseparator = { 'left': "\ue0b1", 'right': "\ue0b3" }

"Rainbow parenthesis
autocmd FileType * RainbowParentheses
let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}']]

"Yank Highlight
let g:highlightedyank_highlight_duration = 250
highlight HighlightedyankRegion guibg=#585b70

"Startify
let g:startify_enable_unsafe = 1

"Carbon now
vnoremap <F6> :CarbonNowSh"<CR>

"Toggle cursor
let g:togglecursor_force = 'xterm'


"Not Currently In Use
" -------------------------
"You Complete Me
"Set leader ygt to go to definition, close preview window
" let g:ycm_autoclose_preview_window_after_completion = 1
" nnoremap <silent> <leader>ygt :YcmCompleter GoTo<CR>
" nnoremap <silent> <leader>yrr <cmd>execute 'YcmCompleter RefactorRename' input( 'Rename to: ' )<CR>

"Vim Sneak
" let g:sneak#s_next = 1
" let g:sneak#use_ic_scs = 1
" highlight Sneak guifg=black guibg=#c29df1
" nnoremap <leader>s <Plug>Sneak_f
" nnoremap <leader>S <Plug>Sneak_F

"Nerd Tree Config
" autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" nnoremap <C-n> :NERDTree<CR>
" nnoremap <C-t> :NERDTreeToggle<CR>
" let NERDTreeShowHidden=0
" let g:NERDTreeMapChangeRoot = "E"
" let NERDTreeQuitOnOpen = 1
" if exists('g:loaded_webdevicons')
"     call webdevicons#refresh()
" endif

"Airline
" let g:airline_powerline_fonts = 1
" let g:airline_theme = 'catppuccin_mocha'
" let g:airline#extensions#tabline#enabled = 1
" set fillchars+=stl:\ ,stlnc:\ 

"Vim9 LSP
" let lspOpts = #{aleSupport: v:true, showSignature: v:false, snippetSupport: v:true, completionMatcher: 'fuzzy'}
" autocmd User LspSetup call LspOptionsSet(lspOpts)
" nnoremap <silent><leader>ed :LspPeekDefinition<CR>
" nnoremap <silent><leader>gd :LspGotoDefinition<CR>
" nnoremap <silent><leader>rn :LspRename<CR>
" nnoremap <silent><leader>ho :LspHover<CR>
" nnoremap <silent><leader>oa :LspCodeAction<CR>

" let lspServers = ([
"                  \ #{name: 'vimls',
"                  \   filetype: 'vim',
"                  \   path: '/opt/homebrew/bin/vim-language-server',
"                  \   args: ['--stdio']
"                  \ }, 
"                  \ #{name: 'r',
"                  \   filetype: 'r',
"                  \   path: '/usr/local/bin/R',
"                  \   args: ['--slave', '-e', 'languageserver::run()']
"                  \   },
"                  \ #{name: 'pyright',
"                  \   filetype: 'python',
"                  \   path: '/opt/homebrew/bin/pyright-langserver',
"                  \   args: ['--stdio'],
"                  \   workspaceConfig: #{
"                  \    python: #{
"                  \       pythonPath:'/Users/thager/.virtualenvs/Work/bin/python'
"                  \    }}
"                  \  },
"                  \ #{name: 'jdtls',
"                  \   filetype: 'java',
"                  \   path: '/opt/homebrew/bin/jdtls',
"                  \   args: [],
"                  \ },
"                  \ #{name: 'sql-language-server',
"                  \  filetype: ['sql', 'dbui'],
"                  \  path: '/opt/homebrew/bin/sql-language-server',
"                  \  args: ['up', '--method', 'stdio'],
"                  \ },
"                  \ #{name: 'bashls',
"                  \   filetype: 'sh',
"                  \   path: '/opt/homebrew/bin/bash-language-server',
"                  \   args: ['start']
"                  \}])
" autocmd User LspSetup call LspAddServer(lspServers)

"Vimcomplete
" let g:vimcomplete_tab_enable = 1
" let vcoptions = #{noNewlineInCompletion: v:false, noNewlineInCompletionEver: v:false, vimcomplete-lsp-enable: v:true}
" autocmd VimEnter * call g:VimCompleteOptionsSet(vcoptions)

"Sql Workbench
" let g:sw_config_dir = '/Users/thager/.sqlworkbench'
" let g:sw_exe = '/Library/Workbench-Build132-with-optional-libs/customStartScript.sh'

" }}}
