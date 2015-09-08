cd ~
[[ -f ~/.bash_profile ]] && rm ~/.bash_profile
[[ -f ~/.bashrc ]] && rm ~/.bashrc
[[ -f ~/.gitconfig ]] && rm ~/.gitconfig
[[ -f ~/.gitignore ]] && rm ~/.gitignore
[[ -f ~/.tmux.conf ]] && rm ~/.tmux.conf
[[ -f ~/.zshrc ]] && rm ~/.zshrc
[[ -f ~/.gdbinit ]] && rm ~/.gdbinit
[[ -f ~/.cgdbrc ]] && rm ~/.cgdbrc
[[ -f ~/.pdbrc ]] && rm ~/.pdbrc
[[ -f ~/.pdbrc.py ]] && rm ~/.pdbrc.py
[[ -f ~/.ptpython/config.py ]] && rm ~/.ptpython/config.py

ln -s ~/.dotfiles/bash_profile ~/.bash_profile
ln -s ~/.dotfiles/bashrc ~/.bashrc
ln -s ~/.dotfiles/gitconfig ~/.gitconfig
ln -s ~/.dotfiles/gitignore ~/.gitignore
ln -s ~/.dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/.dotfiles/zshrc ~/.zshrc
ln -s ~/.dotfiles/gdbinit ~/.gdbinit
ln -s ~/.dotfiles/cgdbrc ~/.cgdbrc
ln -s ~/.dotfiles/pdbrc ~/.pdbrc
ln -s ~/.dotfiles/pdbrc.py ~/.pdbrc.py
mkdir -p ~/.ptpython && ln -s ~/.dotfiles/ptpython-config.py ~/.ptpython/config.py

if [[ ! -d ~/.antigen ]]; then
    git clone https://github.com/zsh-users/antigen.git ~/.antigen
fi
