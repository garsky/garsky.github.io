# garsky.github.io

This blog is for vim and neovim personal usage

git plug management：
【1】 vundle
Note: search plug github, mkdir name must same with github
  EX. coc https://github.com/neoclide/coc.nvim
 
a. mkdir ~/.vim/bundle/coc.nvim

b. git clone https://github.com/neoclide/coc.nvim ~/.git/bundle/coc.nvim

c. vimrc/init.vim add Plugin 'neoclide/coc.nvim'

d. :BundleInstall  install the plug and 

e. :BundleUpdate check update function


windows terminal 
face：Consolas

【Vundle】 不能直接复制 plugin，需要单独拉，windows和linux有差异
1. git clone https://github.com/VundleVim/Vundle.vim ~/.vim/bundle/Vundle.vim
2. vimrc set nocompatible
3. filetype off  "must
4. set rtp+=~/.vim/bundle/Vundle.vim
5. call vundle#begin()
6. Plugin 'VundleVim/Vundle.vim'
7. call vundle#end()
