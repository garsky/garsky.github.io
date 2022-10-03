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
7. call vundle#end();

[]nerdtree cause checkhealth crash
" autocmd BufEnter * if 0 == len(filter(range(1, winnr('$')), 'empty(getbufvar(winbufnr(v:val), "&bt"))')) | qa! | endif

- [ ] wsl git push报错
- [ ] wsl nvim设置
- [ ] windows terminal设置
- [ ] 我的配置:https://github.com/ravenxrz/dotfiles/tree/master/nvim 对你有帮助的话给个三连+star吧[tv_大佬]
- [ ] [nvim] 版本号，依赖，安装，配置文件
nvim[ source build error
[]apt-get][ upgrade 
[]coc.nvim build/index.js not found, please install dependencies and compile coc.nvim by: yarn insta
ERROR: ]Errno 2[ No such file or directory: ‘install’
yarn版本问题，apt 0.32，npm 1.22
~$ sudo apt remove cmdtest
~$ sudo apt remove yarn
sudo npm install -g yarn
cd coc.nvim
yarn install
yarn build

- [x] node.js 和nvim版本过低
- [ ] update nvim to 0.7
https://github.com/neovim/neovim/releases/tag/v0.7.0

- []  Error on notification jumpDefinition"": definition provider not found for current buffer, your language server doesn't support it.
- [] coc clangd fail，CocCommand clangd.install

- [x] tsserver安装fail  No module named dataclasses''
1. 升级python到  python3.8
2. 升级npm 到8，node 到12+
curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt install -y nodejs

- [] checkhealth error  /usr/bin/python3 does not have the "neovim" module. :help provider-python
sudo apt install python3-pip
python3升级，删除老版本不完全，覆盖/usr/lib等目录导致

- [ ] build nvim
CMake Error at /usr/local/share/cmake-3.23/Modules/FindPackageHandleStandardArgs.cmake:230 (message): 
    Could NOT find PkgConfig (missing: PKG_CONFIG_EXECUTABLE)

- [ ] python3 -m install fail
- [ ] 折叠展开问题

**error][ Depends: libgcc-s1 (>= 3.3) but it is not installable**
**I solved it this way in Ubuntu 18.04:**
**https://github.com/f4exb/sdrangel/issues/524#issuecomment-639166321**
wget http://mirrors.edge.kernel.org/ubuntu/pool/main/g/gcc-10/gcc-10-base_10-20200411-0ubuntu1_amd64.deb
download libgcc-s1
wget http://mirrors.xmission.com/ubuntu/pool/main/g/gcc-10/libgcc-s1_10-20200411-0ubuntu1_amd64.deb
download a release deb of sdrangel, I tried 4.14.7 and 4.14.8 and both worked
install gcc-10-base first, the libgcc-s1, then sdrangel release deb
sudo dpkg -i ~/Downloads/gcc-10-base_10-20200411-0ubuntu1_amd64.deb
sudo dpkg -i ~/Downloads/libgcc-s1_10-20200411-0ubuntu1_amd64.deb
sudo dpkg -i ~/Downloads/sdrangel_4.14.8-1_amd64.deb
It works! First time I got the Pluto happy with ubuntu and sdrangel.

sudo add-apt-repository ppa:ubuntu-toolchain-r/test
sudo apt update
sudo apt --fix-broken install

**[error] Error on execute :pyx command, ultisnips feature of coc-snippets requires pyx sup**

python3 -m pip install pyx
python3 -m pip install wheel
add /home/potter/.local/bin to PATH 
python3 -m pip install pyx
python3 -m pip install pynvim

**[error] Traceback (most recent call last):**
File "/usr/bin/add-apt-repository", line 12, in <module>
from softwareproperties.SoftwareProperties import SoftwareProperties, shortcut_handler
ModuleNotFoundError: No module named 'softwareproperties'

**[error] WARNING: No Python executable found that can `import neovim`.**
g:python3_host_prog = "/home/potter/software/python3.8.13/bin/python3.8", 原因为指到软连接

**[error][Loacal-history] :UpdateRemotePlugins    No module named '_bz2'**
1. search github http://_bz2.cpython-38-x86_64-linux-gnu.so (_bz2 is include in this so)
2. sudo cp _bz2.cpython-38-x86_64-linux-gnu.so $(PYTHON_HOME)/lib/python3.8/lib-dynload]'"]"]
