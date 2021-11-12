#!/bin/bash
sudo pacman -S base-devel
yay -S zsh nitrogen polybar kitty alacritty lsd xsel npm nodejs vim neovim curl git wget
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

cd ~/Downloads
# For kitty and fonts
git clone https://github.com/Aftaab25/kitty-config.git
cd /kitty-config/
sudo mv JetBrains* /usr/share/fonts/
sudo mv FiraCode/ /usr/share/fonts/
mkdir ~/.config/kitty
sudo mv kitty.conf ~/.config/kitty/

# For vimrc and vim.init
cd ~/Downloads
git clone https://github.com/Aftaab25/vim-vimrc.git
cd vim-vimrc/
sudo mv .vimrc ~/

cd ~/Downloads
git clone https://github.com/Aftaab25/nvim-config-new.git
cd nvim-config-new/
mkdir ~/.config/nvim
mv init.vim ~/.config/nvim/


