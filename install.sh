sudo pacman -Syu

# Chaotic-AUR
sudo pacman-key --recv-key FBA220DFC880C036 --keyserver keyserver.ubuntu.com
sudo pacman-key --lsign-key FBA220DFC880C036
sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst' 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst'
sudo sh -c "echo '[chaotic-aur' >> /etc/pacman.conf"
sudo sh -c "echo 'Include = /etc/pacman.d/chaotic-mirrorlist' >> /etc/pacman.conf"

sudo vim /etc/pacman.conf

sudo pacman -Syyuu reflector rsync curl --needed
sudo reflector --verbose --country 'Ukraine' -l 30 --sort rate --save /etc/pacman.d/mirrorlist

### sys -->
sudo pacman -Syu linux linux-firmware linux-headers base-devel dbus-broker ccache bash-completion --needed
#archive
sudo pacman -Syu lrzip unrar unzip unace p7zip squashfs-tools --needed
#sound
sudo pacman -Syu bluez playerctl pamixer blueman pavucontrol easyeffects calf lsp-plugins zam-plugins mda.lv2 --needed
#noisetorch
#graphics
sudo pacman -Syu mesa lib32-mesa vulkan-intel lib32-vulkan-intel vulkan-icd-loader lib32-vulkan-icd-loader --needed
#grub
sudo pacman -Syu grub-customizer --needed
#disk
sudo pacman -Syu gparted --needed
#python
sudo pacman -Syu python-pip --needed
#terminal
sudo pacman -Syu gnome-terminal fish git asp yay neofetch --needed
#adb
sudo pacman -Syu android-tools --needed

### editor
sudo pacman -Syu code --needed

### net -->
sudo pacman -Syu google-chrome telnegram-desktop discord qbittorrent --needed


### gnome -->
sudo pacman -Syu gnome-browser-connector gnome-tweaks --needed
# rm - xlam
sudo pacman -Rsn cheese eog epiphany evince gnome-calculator gnome-characters gnome-contacts gnome-font-viewer gnome-logs gnome-maps gnome-music gnome-photos gnome-software gnome-user-docs gnome-system-monitor gnome-video-effects


### sway -->
sudo pacman -Syu sway waybar autotiling wmname polkit-gnome grimshot swaybg wl-clipboard cliphist ttf-dejavu adw-gtk3 mako --needed
#video and photo
sudo pacman -Syu imv mpv --needed


### notebook
sudo pacman -Syu brightnessctl --needed


sudo vim /etc/makepkg.conf
# tofi adw-gtk3
yay -Syu tofi kbct-git --needed


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

sudo chsh -s /usr/bin/fish
chsh -s /usr/bin/fish


#good soft
# sudo pacman -Syu cherrytree
