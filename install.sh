#!/bin/bash

set -e

echo "Instalando dotfiles..."

# Zsh
cp zsh/.zshrc ~/
[ -f zsh/.p10k.zsh ] && cp zsh/.p10k.zsh ~/

# Fastfetch
mkdir -p ~/.config/fastfetch
cp -r fastfetch/* ~/.config/fastfetch/

# KDE
cp kde/kdeglobals ~/.config/
cp kde/kwinrc ~/.config/
cp kde/plasmarc ~/.config/
cp kde/plasma-org.kde.plasma.desktop-appletsrc ~/.config/
cp kde/kscreenlockerrc ~/.config/
[ -f kde/ksplashrc ] && cp kde/ksplashrc ~/.config/

# Kitty
mkdir -p ~/.config/kitty
cp -r kitty/.config/kitty/* ~/.config/kitty/

echo "Concluido.Reinicie a sessao"
