#!/bin/bash
sudo apt-get install vim vim-scripts vim-doc ctags vim-addon-manager cscope
tar -xvf vimcdoc-1.9.0.tar.gz
./vimcdoc-1.9.0/vimcdoc.sh -i
cp vimrc ~/.vimrc
vim-addons install omnicppcomplete 
vim-addons install taglist
vim-addons install project
vim-addons install minibufexplorer
vim-addons install winmanager
sudo echo "alias ct=\"ctags -R --c++-kinds=+p --fields=+iaS --extra=+q\"" >> ~/.bashrc
source ~/.bashrc
rm -rf vimcdoc-1.9.0
