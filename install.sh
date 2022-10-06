pacman -Syu -y

# Chaotic-AUR
pacman-key --recv-key FBA220DFC880C036 --keyserver keyserver.ubuntu.com
pacman-key --lsign-key FBA220DFC880C036
pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst' 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst'
echo "[chaotic-aur]" >> /etc/pacman.conf
echo "Include = /etc/pacman.d/chaotic-mirrorlist" >> /etc/pacman.conf

vim /etc/pacman.conf

pacman -Syu reflector rsync curl --needed -y
reflector --verbose --country 'Germany' -l 25 --sort rate --save /etc/pacman.d/mirrorlist

# sys -->
pacman -Syu base-devel polkit-gnome asp dbus-broker bluez code git playerctl brightnessctl pamixer blueman pavucontrol python-pip yay android-tools neofetch grub-customizer gparted ccache bash-completion  --needed -y
pacman -Syu lrzip unrar unzip unace p7zip squashfs-tools --needed -y

pacman -Syu mesa lib32-mesa vulkan-intel lib32-vulkan-intel vulkan-icd-loader lib32-vulkan-icd-loader --needed -y


# sway -->
pacman -Syu sway waybar autotiling grimshot swaybg wl-clipboard ttf-dejavu fish --needed -y
# tofi

# net -->
pacman -Syu google-chrome telegram-desktop qbittorrent --needed -y

# gnome -->
pacman -Syu gnome-browser-connector --needed -y

# rm - xlam
pacman -Rsn epiphany gnome-books gnome-calculator gnome-maps gnome-music gnome-weather gnome-photos gnome-software gnome-user-docs totem yelp vino gnome-user-share gnome-characters simple-scan eog rygel gnome-font-viewer gnome-remote-desktop gnome-logs orca


systemctl --global enable dbus-broker.service
systemctl mask NetworkManager-wait-online.service
systemctl --user mask org.gnome.SettingsDaemon.Wacom.service
systemctl --user mask org.gnome.SettingsDaemon.PrintNotifications.service
systemctl --user mask org.gnome.SettingsDaemon.Color.service
systemctl --user mask org.gnome.SettingsDaemon.A11ySettings.service
systemctl --user mask org.gnome.SettingsDaemon.UsbProtection.service
systemctl --user mask org.gnome.SettingsDaemon.ScreensaverProxy.service
systemctl --user mask org.gnome.SettingsDaemon.Sharing.service
systemctl --user mask org.gnome.SettingsDaemon.Smartcard.service
systemctl --user mask org.gnome.SettingsDaemon.Housekeeping.service
systemctl --user mask org.gnome.SettingsDaemon.Power.service




