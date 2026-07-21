## Cosmix-Danang

This repository is for my own custom [bootc](https://github.com/bootc-dev/bootc) image. 

It is an adjusted respin of the Universal Blue base image with the Cosmic desktop added.

To build this image I chose the Universal Blue base image (ghcr.io/ublue-os/base-main:latest). 

My Cosmic has a bare minimum of included applications and no Cosmic store.

Distrobox and Flathub support are included in the image.  

As an appstore you can install the flatpak of Easyflatpak or Bazaar.

Out of the official Fedora Cosmic desktop I have excluded a number of applications:

            ark                        nheko 
            cosmic-edit                nvtop
            cosmic-player              okular 
            cosmic-store               qt5ct
            firefox                    qt6ct
            gnome-abrt                 rhythmbox
            gnome-calculator           setroubleshoot
            gnome-disk-utility         thunderbird
            gnome-system-monitor       libreoffice-calc
            im-chooser                 libreoffice-impress
            libreoffice-writer            
            
The idea is to make the actual bootc image as lean as possible; all additional applications can be installed as flatpak and by using brew or distrobox. 

### Step 1: Choose a Fedora Atomic image and install it

Doesn't matter which one you pick, you'll rebase anyway (Kinoite, Silverblue, Cosmic)

### Step 2: Switch to Cosmix

From the terminal in your bootc system, run the following command:

    sudo bootc switch ghcr.io/danangineer/cosmix-danang

This should queue your image for the next reboot, which you can do immediately after the command finishes. You have officially set up your custom image! 

### Step 3: let's Brew

For all our CLI applications you'll have to install Homebrew (https://brew.sh) with the following command:

    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

The likes of htop, fastfetch, yazi etc etc are available to you. Or by creating a distrobox of course.

-----------------------------

Feel free to use these builds and dots as you like. I do not, however, imply any form of support or ongoing maintenance. And of course, you use them entirely at your own risk. Have fun!
