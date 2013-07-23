" settings
set nocompatible      " Use vim, no vi defaults
set number            " Show line numbers
set ruler             " Show line and column number
set nowrap            " don't wrap lines
syntax enable         " Turn on syntax highlighting allowing local overrides
set encoding=utf-8    " Set default encoding to UTF-8

" source: http://vimcasts.org/episodes/show-invisibles/
" Use the same symbols as TextMate for tabstops and EOLs
set list
set listchars=trail:·,tab:▸\ ,eol:¬

" indent
set autoindent
set expandtab
set shiftround
" defaults
set tabstop=2
set softtabstop=2
set shiftwidth=2
" filetypes
autocmd FileType moon setlocal tabstop=4 softtabstop=4 shiftwidth=4
autocmd FileType lua setlocal tabstop=4 softtabstop=4 shiftwidth=4
autocmd FileType loom setlocal tabstop=4 softtabstop=4 shiftwidth=4

" source: http://vimcasts.org/episodes/tabs-and-spaces/
" Set tabstop, softtabstop and shiftwidth to the same value
command! -nargs=* Stab call Stab()
function! Stab()
  let l:tabstop = 1 * input('set tabstop = softtabstop = shiftwidth = ')
  if l:tabstop > 0
    let &l:sts = l:tabstop
    let &l:ts = l:tabstop
    let &l:sw = l:tabstop
  endif
  call SummarizeTabs()
endfunction
  
function! SummarizeTabs()
  try
    echohl ModeMsg
    echon 'tabstop='.&l:ts
    echon ' shiftwidth='.&l:sw
    echon ' softtabstop='.&l:sts
    if &l:et
      echon ' expandtab'
    else
      echon ' noexpandtab'
    endif
  finally
    echohl None
  endtry
endfunction
