if has("gui_running")
  " https://github.com/chriskempson/base16-vim
  colorscheme base16-tomorrow
  set background=dark

  set lines=60
  set columns=190

  set guifont=Monaco:h17

  " remove visual and audible bells
  set vb t_vb=

  " Fullscreen takes up entire screen
  set fuoptions=maxhorz,maxvert

  " Command-Return for fullscreen
  " macmenu Window.Toggle\ Full\ Screen\ Mode key=<D-CR>

  " Disable the macvim toolbar
  set guioptions-=T
endif
