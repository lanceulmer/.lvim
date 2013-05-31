runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

for f in split(glob('~/.vim/settings/*.vim'), '\n')
    exe 'source' f
endfor
