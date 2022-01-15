#!/bin/bash

# Installing essential apps
#sudo pacman -S yay
echo -e "===============================================\n"
echo -e "Installing the following apps: \n1. Vim\n2. Neovim\n3. xsel(Clipboard for vim & neovim)\n4. nodejs\n5. npm\n6. yarn\n7. zsh\n8. tree\n9. tmux\n"
echo -e "===============================================\n"
sudo pacman -S vim neovim xsel nodejs npm yarn zsh tree tmux

# Installing Courier-Code font
echo -e "===============================================\n"
echo -e "Installing Courier-Code font and JetBrainsMono font\n"
echo -e "===============================================\n"
yay -S ttf-courier-code ttf-jetbrains-mono

# Installing jdk-17 & jre-17
echo -e "===============================================\n"
echo -e "Installing JAVA (jdk-17 & jre-17)\n"
echo -e "===============================================\n"
yay -S jdk jre

# For installing browsers, IDEs, text-editors and other apps
echo -e "===============================================\n"
echo -e "Installing Browsers: Google Chrome, Epiphany, Brave\n"
echo -e "===============================================\n"
yay -S brave-bin google-chrome epiphany brave-bin

echo -e "===============================================\n"
echo -e "Installing IDEs and text-editors\n"
echo -e "===============================================\n"
yay -S intellij-idea-community-edition pycharm-community-edition visual-studio-code-insiders-bin visual-studio-code-bin geany
yay -S sublime-text-4 notepadqq 

echo -e "===============================================\n"
echo -e "Installing Dev Tools\n"
echo -e "===============================================\n"
yay -S github-desktop-bin gimp krita obs-studio

echo -e "===============================================\n"
echo -e "Installing other apps\n"
echo -e "===============================================\n"
yay -S spotify telegram-desktop-bin vlc okular libreoffice-still whatsapp-for-linux discord slack
#yay -S alacritty

#installing oh-my-zsh
echo -e "===============================================\n"
echo -e "Installing ohmyzsh\n"
echo -e "===============================================\n"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
#git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
#git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

# Installing vim-plug for vim and neovim
echo -e "===============================================\n"
echo -e "Installing vim-plug for vim\n"
echo -e "===============================================\n"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo -e "===============================================\n"
echo -e "Installing vim-plug for neovim\n"
echo -e "===============================================\n"
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# Moving .vimrc to ~/.config folder
echo -e "===============================================\n"
echo -e "Moving(Copying) .vimrc to ~/.config folder\n"
echo -e "===============================================\n"
cp ~/Dotfiles/.vimrc ~/.

# Moving nvim-config-new to ~/.config/nvim
echo -e "===============================================\n"
echo -e "Moving(Copying) nvim-config-new to ~/.config/nvim\n"
echo -e "===============================================\n"
cp ~/Dotfiles/nvim-config-new ~/.config/nvim

# Moving Jetbrains Font from Kitty folder to /usr/share/fonts/
echo -e "===============================================\n"
echo -e "Moving Jetbrains Font from Dotfiles/kitty/ folder to /usr/share/fonts/\n"
echo -e "sudo permissions will be reqd."
echo -e "===============================================\n"
sudo mv ~/Dotfiles/kitty/Jet* /usr/share/fonts/

echo -e "===============================================\n"
echo -e "                      DONE                       "
echo -e "===============================================\n"
