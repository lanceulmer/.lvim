if has("gui_running")
    " term has 256 colors
    set t_Co=256

    " https://github.com/chriskempson/vim-tomorrow-theme
    colorscheme Tomorrow-Night

    set lines=60
    set columns=190

    set guifont=Inconsolata:h20,Monaco:h17

    " remove visual and audible bells
    set vb t_vb=

    " Fullscreen takes up entire screen
    set fuoptions=maxhorz,maxvert

    " Command-Return for fullscreen
    " macmenu Window.Toggle\ Full\ Screen\ Mode key=<D-CR>

    " Disable the macvim toolbar
    set guioptions-=T
endif
