cp vimrc ~/.vimrc

mkdir -p ~/.vim/pack/mypackage/start/
cd  ~/.vim/pack/mypackage/start/

declare -a packages=(
    'https://github.com/PProvost/vim-ps1'
    'https://github.com/Shougo/dein.vim'
    'https://github.com/Shougo/deoplete.nvim'
    'https://github.com/Shougo/neocomplcache'
    'https://github.com/Shougo/neosnippet'
    'https://github.com/Shougo/neosnippet-snippets'
    'https://github.com/Shougo/unite.vim'
    'https://github.com/Shougo/vimfiler.vim'
    'https://github.com/Shougo/vimshell'
    'https://github.com/Xuyuanp/nerdtree-git-plugin'
    'https://github.com/Yggdroot/indentLine'
    'https://github.com/airblade/vim-gitgutter'
    'https://github.com/ctrlpvim/ctrlp.vim'
    'https://github.com/flazz/vim-colorschemes'
    'https://github.com/itchyny/lightline.vim'
    'https://github.com/jacoborus/tender.vim'
    'https://github.com/jpalardy/vim-slime'
    'https://github.com/majutsushi/tagbar'
    'https://github.com/nathanaelkane/vim-indent-guides'
    'https://github.com/nelstrom/vim-visual-star-search'
    'https://github.com/rickhowe/diffchar.vim'
    'https://github.com/scrooloose/nerdtree'
    'https://github.com/scrooloose/syntastic'
    'https://github.com/sudar/vim-arduino-syntax'
    'https://github.com/t9md/vim-textmanip'
    'https://github.com/tomasr/molokai'
    'https://github.com/tpope/vim-fugitive'
    'https://github.com/tyru/open-browser.vim'
    'https://github.com/ujihisa/unite-colorscheme'
    'https://github.com/vim-scripts/VimClojure'
    'https://github.com/vim-scripts/vcscommand.vim'
)
declare -a branches=(
    'master'
    'master'
    'master'
    'master'
    'master'
    'master'
    'master'
    'master'
    'master'
    'master'
    'master'
    'master'
    'master'
    'master'
    'master'
    'master'
    'main'
    'master'
    'master'
    'master'
    'master'
    'master'
    'master'
    'master'
    'master'
    'master'
    'master'
    'master'
    'master'
    'master'
    'master'
)

for i in ${!packages[@]}; do
    directory=`basename ${packages[i]}`
    if [ -e ./${directory} ]; then
        cd ./${directory}
        git pull origin ${branches[i]}
        cd ../
    else
        git clone ${packages[i]}
    fi
done

