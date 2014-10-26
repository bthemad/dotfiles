cd ~
[[ -f ~/.bash_profile ]] && rm ~/.bash_profile
[[ -f ~/.bashrc ]] && rm ~/.bashrc
[[ -f ~/.gitconfig ]] && rm ~/.gitconfig
[[ -f ~/.tmux.conf ]] && rm ~/.tmux.conf
[[ -f ~/.zshrc ]] && rm ~/.zshrc
[[ -f ~/.gdbinit ]] && rm ~/.gdbinit
[[ -f ~/.cgdbrc ]] && rm ~/.cgdbrc

ln -s ~/.dotfiles/bash_profile ~/.bash_profile
ln -s ~/.dotfiles/bashrc ~/.bashrc
ln -s ~/.dotfiles/gitconfig ~/.gitconfig
ln -s ~/.dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/.dotfiles/zshrc ~/.zshrc
ln -s ~/.dotfiles/gdbinit ~/.gdbinit
ln -s ~/.dotfiles/cgdbrc ~/.cgdbrc

