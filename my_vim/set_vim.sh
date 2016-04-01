tar -jxvf Vundle.vim.tar.bz2

mkdir -p ~/.vim/bundle
cp -rf ./Vundle.vim ~/.vim/bundle/
sudo apt-get install vim vim-scripts vim-doc ctags vim-addon-manager
tar -xvf vimcdoc-1.9.0.tar.gz  
cd vimcdoc-1.9.0 && ./vimcdoc.sh -i
cd -
rm vimcdoc-1.9.0 -rf
vim-addons install omnicppcomplete
vim-addons install taglist
echo "alias ctags='ctags -R --c++-kinds=+p --fields=+iaS --extra=+q'" >> ~/.bashrc




