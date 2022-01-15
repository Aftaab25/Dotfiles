#!/bin/bash

# Installing essential apps
#sudo pacman -S yay
echo "Installing the following apps: \n1. Vim\n2. Neovim\n3. xsel(Clipboard for vim & neovim)\n4. nodejs\n5. npm\n6. yarn\n7. zsh\n8. tree\n9. tmux\n"
echo "===============================================\n"
sudo pacman -S vim neovim xsel nodejs npm yarn zsh tree tmux

# Installing Courier-Code font
yay -S ttf-courier-code

# Installing jdk-17 & jre-17
echo "Installing JAVA (jdk-17 & jre-17)\n"
echo "===============================================\n"
yay -S jdk jre

# For installing browsers, IDEs, text-editors and other apps
echo "Installing Browsers: Google Chrome, Epiphany, Brave\n"
echo "===============================================\n"
yay -S brave-bin google-chrome epiphany brave-bin

echo "Installing IDEs and text-editors\n"
echo "===============================================\n"
yay -S intellij-idea-community-edition pycharm-community-edition visual-studio-code-insiders-bin visual-studio-code-bin geany
yay -S sublime-text-4 notepadqq 

echo "Installing Dev Tools\n"
echo "===============================================\n"
yay -S github-desktop-bin gimp krita

echo "Installing IDEs and text-editors: Intellij-Idea\n"
echo "===============================================\n"
yay -S spotify telegram-desktop-bin vlc okular libreoffice-still
#yay -S alacritty

#installing oh-my-zsh
echo "Installing ohmyzsh\n"
echo "===============================================\n"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
#git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
#git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

# Installing brave browser

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
