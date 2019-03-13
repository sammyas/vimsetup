#!bin/bash
cp ./vimrc ~/.vimrc
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
git clone https://github.com/tomasr/molokai
mkdir ~/.vim/colors
cp ./molokai/colors/molokai.vim ~/.vim/colors/
sudo apt-get install ctags
go get -u github.com/jstemmer/gotags #for go!
cd ~/.vim/bundle
git clone https://github.com/majutsushi/tagbar.git
git clone https://github.com/tpope/vim-fugitive.git
vim -u NONE -c "helptags vim-fugitive/doc" -c q
echo "Now Follow the directions to set up ctags git hooks from https://tbaggery.com/2011/08/08/effortless-ctags-with-git.html"
