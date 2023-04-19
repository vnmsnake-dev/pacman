#! /bin/bash
sudo pacman -Syu --noconfirm 
sudo pacman -S xf86-video-ati qtile picom code feh nitrogen wget htop make lsd bat npm tmux xorg xorg-xinit xorg-server mesa mesa-demos --noconfirm
sudo pacman -S curl gdm nano pulseaudio volumeicon pavucontrol pamixer terminator firefox rofi noto-fonts ttf-dejavu ttf-liberation --noconfirm
sudo pacman -S base-devel arandr ranger grub-customizer net-tools neofetch --noconfirm
##otros 
systemctl enable gdm.service
neofetch >> neo.txt
###blackarch
mkdir /home/vnmsnake/repos
mkdir /home/vnmsnake/repos/blackarch
cd /home/vnmsnake/repos/blackarch
curl -O https://blackarch.org/strap.sh
chmod +x strap.sh
sudo /home/vnmsnake/repos/blackarch/strap.sh
cd /home/vnmsnake/repos
###paru
cd /home/vnmsnake/repos
git clone https://aur.archlinux.org/yay.git
####vnmsnake
##yay
su vnmsnake
sudo chown -R vnmsnake /home/vnmsnake/repos/yay
cd /home/vnmsnake/repos/yay
makepkg -si
cd /home/vnmsnake/repos
sudo git clone https://aur.archlinux.org/paru-bin.git
sudo chown -R vnmsnake /home/vnmsnake/repos/paru-bin
cd /home/vnmsnake/repos/paru-bin
makepkg -si
mkdir /home/vnmsnake/.config/qtile
sleep 1s
cp /home/vnmsnake/pacman/config.py /home/vnmsnake/.config/qtile/
wget https://www.todofondos.net/wp-content/uploads/1920x1080-Uchiha-Itachi-Crow-Wallpaper.-I-HD-Imagen-768x432.png
reboot
