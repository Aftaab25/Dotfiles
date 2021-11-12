#!/bin/bash

# Installing essential apps
sudo apt install preload vim neovim gnome-tweaks xsel nodejs npm yarn zsh nitrogen arandr kitty curl git wget tree tmux ubuntu-restricted-extras

#installing oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

# Download Spotify for Linux
curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update && sudo apt-get install spotify-client

# installing brave browser
sudo apt install apt-transport-https
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update && sudo apt install brave-browser

# Creating necessary directories
# alacritty dir
cd .config
mkdir alacritty
cd alacritty
cd

# nvim dir
cd .config
mkdir nvim
cd

# kitty dir
cd .config
mkdir kitty
cd kitty


# clone git repos for configuration files
# cloning alacritty config
git clone https://github.com/Aftaab25/Alacritty-Config.git
cd Alacritty-Config
mv alacritty.yml ~/.config/alacritty/
sudo mv jetbrains-mono-nerd-patched.ttf /usr/share/fonts/
cd


# cloning kitty config
git clone https://github.com/Aftaab25/kitty-config.git
cd kitty-config
sudo mv JetBrains* /usr/share/fonts/
sudo mv FiraCode/ /usr/share/fonts/
mv kitty.conf ~/.config/kitty/
cd

# cloning nvim config
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

git clone https://github.com/Aftaab25/nvim-config-new.git
cd nvim-config-new
mv init.vim ~/.config/nvim/
cd

# cloning .vimrc
git clone https://github.com/Aftaab25/vim-vimrc.git
cd vim-vimrc
mv .vimrc ~/
