# Setup script that should be executed after cloning the repository into the $HOME directory.
#   git clone git@github.com:settipalli/dotfiles.git

# This script is losely based on the steps outlined at http://onebigfunction.com/vim/2015/01/15/fresh-start-with-macvim/

# Link VIM configuration file.
echo "Searching for existing VIM configuration"
if [ -d ~/.vim ]; then
    echo "  Found .vim in the home folder."
    name=".vim_backup_$(date|tr -s ' ' '_'|tr ':' '_')"
    cp -rp ~/.vim ~/${name}
    echo "  Created a backup copy of ~/.vim as ~/${name}"
    rm -rf ~/.vim
    echo "  Deleted ~/.vim folder"
else
    echo "  ~/.vim does not exist."
fi

if [ -f ~/.vimrc ]; then
    echo "  Found .vimrc"
    name==".vimrc_backup_$(date|tr -s ' ' '_'|tr ':' '_')"
    cp -rp ~/.vimrc ~/${name}
    echo "  Created a backup copy of ~/.vimrc as ~/{name}"
    rm -rf ~/.vimrc
    echo "  Deleted ~/.vimrc"
else
    echo "  ~/.vimrc does not exist"
fi

echo "Configuring VIM ..."
ln -s ~/dotfiles/vim ~/.vim
# echo "Installing Vundle ..."
# git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim 
echo 'Done'