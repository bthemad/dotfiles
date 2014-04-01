cd ~
rm ./.bash_profile
rm ./.bashrc
rm ./.gitconfig
rm ./.tmux
rm ./.zshrc
rm ./.gdbinit
rm ./.cgdbrc

ln -s ~/.dotfiles/bash_profile ./.bash_profile
ln -s ~/.dotfiles/bashrc ./.bashrc
ln -s ~/.dotfiles/gitconfig ./.gitconfig
ln -s ~/.dotfiles/tmux.conf ./.tmux.conf
ln -s ~/.dotfiles/zshrc ./.zshrc
ln -s ~/.dotfiles/cgdbrc ./.cgdbrc
ln -s ~/.dotfiles/rsync_exclude ./.rsync_exclude

