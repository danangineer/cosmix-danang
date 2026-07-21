#!/bin/bash

set -ouex pipefail

### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/43/x86_64/repoview/index.html&protocol=https&redirect=1

# this installs a package from fedora repos
dnf5 install -y @cosmic-desktop-environment
dnf5 install -y distrobox
dnf5 install -y fastfetch

dnf5 remove -y ark 
dnf5 remove -y cosmic-edit
dnf5 remove -y cosmic-player 
dnf5 remove -y cosmic-store
dnf5 remove -y firefox 
dnf5 remove -y gnome-abrt
dnf5 remove -y gnome-calculator
dnf5 remove -y gnome-disk-utility
dnf5 remove -y gnome-system-monitor
dnf5 remove -y im-chooser
dnf5 remove -y libreoffice-calc
dnf5 remove -y libreoffice-impress
dnf5 remove -y libreoffice-writer
dnf5 remove -y nheko 
dnf5 remove -y nvtop
dnf5 remove -y okular 
dnf5 remove -y qt5ct
dnf5 remove -y qt6ct
dnf5 remove -y rhythmbox
dnf5 remove -y setroubleshoot
dnf5 remove -y thunderbird 
 

# Add Flathub by default
mkdir -p /etc/flatpak/remotes.d
curl --retry 3 -o /etc/flatpak/remotes.d/flathub.flatpakrepo "https://dl.flathub.org/repo/flathub.flatpakrepo"

#### Example for enabling a System Unit File

systemctl enable podman.socket


