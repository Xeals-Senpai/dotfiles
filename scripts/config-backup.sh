#!/bin/sh

## Script for backing up configs file I use in Arch ##

dotFiles="~/Documents/dotfiles"

echo "Copying individual files to dotfiles...."
echo "Please stand by..."

sudo cp ~/.xinitrc ~/Documents/dotfiles
sudo cp ~/.zshrc ~/Documents/dotfiles
sudo cp ~/.zshenv ~/Documents/dotfiles
sudo cp ~/.zlogin ~/Documents/dotfiles/
sudo cp ~/.gitconfig ~/Documents/dotfiles/
sudo cp /etc/pacman.conf ~/Documents/dotfiles/
sudo cp ~/.swayenv ~/Documents/dotfiles
sudo cp ~/xorg.conf.new ~/Documents/dotfiles
sudo cp ~/.Xauthority ~/Documents/dotfiles

echo "Done copying individuals files to dotfiles moving on to app specific folders...."

sudo cp -r ~/.config/dunst ~/Documents/dotfiles/.config
sudo cp -r ~/.config/conky ~/Documents/dotfiles/.config
sudo cp -r ~/.config/i3 ~/Documents/dotfiles/.config
sudo cp -r ~/.config/waybar ~/Documents/dotfiles/.config
sudo cp -r ~/.config/kitty ~/Documents/dotfiles/.config
sudo cp -r ~/.config/zsh ~/Documents/dotfiles/.config
sudo cp -r ~/.config/sway ~/Documents/dotfiles/.config
sudo cp -r ~/.config/rofi ~/Documents/dotfiles/.config

echo "Thank you for using the backup script!"
echo "Ending the program now...."

cd ..

