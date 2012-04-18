so ~/.vim/minimal_vimrc

call pathogen#infect()

" Flags to flake8
let g:syntastic_python_checker_args='--ignore=E501,W191'
