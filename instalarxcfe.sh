#!/bin/bash
# pacman -Sy
# pacman -S git

# git clone https://github.com/palitoschinos/instalarch
# cd instalarch
# chmod +x instalarch.sh
# ./instalarch.sh

# If you don't have network connectivity in your Arch system, run:
# systemctl start dhcpcd <ethernet or wlan interface name>
# systemctl enable dhcpcd
# ip link set <ethernet or wlan interface name> up

# Fully update your Arch system:
# pacman -Syu  # If a new kernel becomes available and is now installed, reboot, before proceeding.
# Now that you have an updated system, do:
# pacman -S linux-headers
# pacman -S dkms  # This will automatically rebuild your kernel modules as new upstream kernels are released.


pacman -S xorg-server xorg-xinit xorg-apps xorg-drivers

pacman -S xfce4 xfce4-goodies

# pacman -Syu xf86-input-wacom

# nano /etc/locale.gen # uncomment the needed lines like: es_Es.UTF-8 or es_AR.UTF-8
# locale-gen
# localectl set-locale LANG="en_US.UTF-8"
# localectl set-x11-keymap es
# localectl bluez bluez-utils

pacman -S networkmanager

systemctl stop dhcpcd
systemctl disable dhcpcd

systemctl enable NetworkManager
systemctl start NetworkManager

pacman -S startx

echo "are we still alive?"

# sudo nano /etc/sudoers
# user_name ALL=(ALL)  ALL

# pacman -S --needed base-devel git wget yajl
# cd /tmp
# git clone https://aur.archlinux.org/package-query.git
# cd package-query/
# makepkg -si
# cd ..
# git clone https://aur.archlinux.org/yaourt.git
# cd yaourt/
# makepkg -si
# cd ..
# yaourt -S pamac-aur
