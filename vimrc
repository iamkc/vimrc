
set nu
set autoindent
set cindent
syntax on
set hlsearch			" search highlighting
set showmode
set pastetoggle=<F3>
set tabstop=4
set shiftwidth=4
set expandtab			"transfer tab to space
autocmd FileType make setlocal noexpandtab
colorscheme desert
set ff=unix
" show trailing white spaces
highlight WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /\s\+$/


" ============================================
" Vundle
" use :PluginInstall to install packages below
" ============================================
let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
  echo "Installing Vundle.."
  echo ""
  silent !mkdir -p ~/.vim/bundle
  silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
  let iCanHazVundle=0
endif

set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" let Vundle manage Vundle
Bundle 'gmarik/vundle'
" My Bundles here:
" vim-scripts repos, vim-scripts.org
Bundle 'SrcExpl'
Bundle 'Trinity'
Bundle 'taglist.vim'
Bundle 'The-NERD-tree'
Bundle 'charz/multi-cscope-db'
Bundle 'fholgado/minibufexpl.vim'
filetype plugin indent on

"minibuf plugin
let g:miniBufExplMapWindowNavVim = 1 "Ctrl-<hjkl> to move to window
let g:miniBufExplTabWrap = 1 " make tabs show complete (no broken on two lines)

" SrcExpl : a Source code Explorer
" http://www.vim.org/scripts/script.php?script_id=2179

" // The switch of the Source Explorer
nmap <F8> :SrcExplToggle<CR>

" // Set the height of Source Explorer window
let g:SrcExpl_winHeight = 8

" // Set 100 ms for refreshing the Source Explorer
let g:SrcExpl_refreshTime = 100

" // Set "Enter" key to jump into the exact definition context
let g:SrcExpl_jumpKey = "<ENTER>"

" // Set "Space" key for back from the definition context
let g:SrcExpl_gobackKey = "<SPACE>"

" // In order to Avoid conflicts, the Source Explorer should know what plugins
" // are using buffers. And you need add their bufname into the list below
" // according to the command ":buffers!"
let g:SrcExpl_pluginList = [
        \ "__Tag_List__",
        \ "_NERD_tree_",
        \ "Source_Explorer"
    \ ]

" // Enable/Disable the local definition searching, and note that this is not
" // guaranteed to work, the Source Explorer doesn't check the syntax for now.
" // It only searches for a match with the keyword according to command 'gd'
let g:SrcExpl_searchLocalDef = 1

" // Do not let the Source Explorer update the tags file when opening
let g:SrcExpl_isUpdateTags = 0

" // Use 'Exuberant Ctags' with '--sort=foldcase -R .' or '-L cscope.files' to
" //  create/update a tags file
let g:SrcExpl_updateTagsCmd = "ctags --sort=foldcase -R ."

" // Set "<F12>" key for updating the tags file artificially
let g:SrcExpl_updateTagsKey = "<F12>"

" Trinity : the Trinity of taglist, NERDtree and SrcExpl: an IDE works like Source Insight
" http://www.vim.org/scripts/script.php?script_id=2347

" Open and close all the three plugins on the same time
nmap <F8>  :TrinityToggleAll<CR>

" Open and close the Source Explorer separately
nmap <F9>  :TrinityToggleSourceExplorer<CR>

" Open and close the Taglist separately
nmap <F10> :TrinityToggleTagList<CR>

" Open and close the NERD Tree separately
nmap <F11> :TrinityToggleNERDTree<CR>

