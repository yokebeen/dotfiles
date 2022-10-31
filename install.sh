sudo pacman -Syu

# Chaotic-AUR
sudo pacman-key --recv-key FBA220DFC880C036 --keyserver keyserver.ubuntu.com
sudo pacman-key --lsign-key FBA220DFC880C036
sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst' 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst'
sudo echo "[chaotic-aur]" >> /etc/pacman.conf
sudo echo "Include = /etc/pacman.d/chaotic-mirrorlist" >> /etc/pacman.conf

sudo vim /etc/pacman.conf

sudo pacman -Syyuu reflector rsync curl --needed
sudo reflector --verbose --country 'Germany' -l 25 --sort rate --save /etc/pacman.d/mirrorlist

# sys -->
sudo pacman -Syu base-devel polkit-gnome asp dbus-broker bluez code git playerctl brightnessctl pamixer blueman pavucontrol python-pip yay android-tools neofetch grub-customizer gparted ccache bash-completion --needed
sudo pacman -Syu lrzip unrar unzip unace p7zip squashfs-tools --needed

sudo pacman -Syu mesa lib32-mesa vulkan-intel lib32-vulkan-intel vulkan-icd-loader lib32-vulkan-icd-loader --needed

# sway -->
sudo pacman -Syu sway waybar autotiling grimshot swaybg wl-clipboard ttf-dejavu adw-gtk3 --needed
# tofi adw-gtk3

yay -Syu tofi kbct-git --needed

sudo pacman -Syu imv mpv --needed
# net -->
sudo pacman -Syu google-chrome telegram-desktop qbittorrent --needed

# gnome -->
sudo pacman -Syu gnome-browser-connector gnome-tweaks --needed

# rm - xlam
sudo pacman -Rsn epiphany cheese gnome-books gnome-calculator gnome-maps gnome-music gnome-weather gnome-photos gnome-software gnome-user-docs totem yelp vino gnome-user-share gnome-characters simple-scan eog rygel gnome-font-viewer gnome-remote-desktop gnome-logs orca


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


sudo systemctl --global enable dbus-broker.service
sudo systemctl mask NetworkManager-wait-online.service
sudo systemctl --user mask org.gnome.SettingsDaemon.Wacom.service
sudo systemctl --user mask org.gnome.SettingsDaemon.PrintNotifications.service
sudo systemctl --user mask org.gnome.SettingsDaemon.Color.service
sudo systemctl --user mask org.gnome.SettingsDaemon.A11ySettings.service
sudo systemctl --user mask org.gnome.SettingsDaemon.UsbProtection.service
sudo systemctl --user mask org.gnome.SettingsDaemon.ScreensaverProxy.service
sudo systemctl --user mask org.gnome.SettingsDaemon.Sharing.service
sudo systemctl --user mask org.gnome.SettingsDaemon.Smartcard.service
sudo systemctl --user mask org.gnome.SettingsDaemon.Housekeeping.service
sudo systemctl --user mask org.gnome.SettingsDaemon.Power.service



systemctl enable --now kbct.service
systemctl enable --now bluetooth.service