
# WIFI drivers

sudo pacman -S --noconfirm base-devel linux-headers dkms
# TODO check if temp folder exists and create if not
git clone https://aur.archlinux.org/rtl8821ce-dkms-git.git temp/rtl18821ce
cd temp/rtl18821ce
makepkg -si

# CLI Utils
sudo pacman -S --noconfirm fd ripgrep bat exa xclip xcape

# Github
ssh-keygen -t rsa -b 4096 -C "nikitaklimenko.good@protonmail.com"
cat .ssh/id_rsa.pub | xclip -selection clipboard
xdg-open https://github.com/settings/ssh/new

# Private repos
git clone git@github.com:n12o/.doom.d.git ~/.doom.d
git clone git@github.com:n12o/scratches.git ~/scratches

# Emacs/Doom
sudo pacman -S --noconfirm emacs
git clone --depth 1 https://github.com/hlissner/doom-emacs ~/.emacs.d
~/.emacs.d/bin/doom install

# Firefox 
# sudo pacman -S --noconfirm firefox-developer-edition

