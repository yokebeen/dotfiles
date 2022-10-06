
# Chaotic-AUR
pacman-key --recv-key FBA220DFC880C036 --keyserver keyserver.ubuntu.com
pacman-key --lsign-key FBA220DFC880C036
pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst' 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst' -y
echo "[chaotic-aur]" >> /etc/pacman.conf
echo "Include = /etc/pacman.d/chaotic-mirrorlist" >> /etc/pacman.conf
# sys -->
pacman -Syu bluez code git playerctl brightnessctl pamixer blueman pavucontrol python-pip yay android-tools neofetch grub-customizer gparted ccache bash-completion  --needed -y

# sway -->
pacman -Syu sway waybar autotiling grimshot swaybg wl-clipboard tofi --needed -y

# net -->
pacman -Syu google-chrome telegram-desktop qbittorrent --needed -y

# gnome -->
pacman -Syu gnome-browser-connector --needed -y