""
"" Backup and swap files
""

" create backup directory
if isdirectory($HOME . '/.vim/_backup') == 0
  :silent !mkdir -p ~/.vim/_backup >/dev/null 2>&1
endif
" create swap directory
if isdirectory($HOME . '/.vim/_temp') == 0
  :silent !mkdir -p ~/.vim/_temp >/dev/null 2>&1
endif

set backupdir^=~/.vim/_backup//    " where to put backup files.
set directory^=~/.vim/_temp//      " where to put swap files.
