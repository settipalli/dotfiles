# Setup script that should be executed after cloning the repository into the $HOME directory.
#   git clone git@github.com:settipalli/dotfiles.git

# Link VIM configuration file.
echo -n "Configuring VIM ..."
ln -s ~/dotfiles/vim ~/.vim
echo 'Done'