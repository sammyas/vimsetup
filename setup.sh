#!bin/bash
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
git clone https://github.com/tomasr/molokai
mkdir ~/.vim/colors
cp ./molokai/colors/molokai.vim ~/.vim/colors/
brew install ctags
go get -u github.com/jstemmer/gotags #for go!
cd ~/.vim/bundle
git clone https://github.com/majutsushi/tagbar.git
