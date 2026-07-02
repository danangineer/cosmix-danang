## Cosmix-Danang

This repository is for my own custom [bootc](https://github.com/bootc-dev/bootc) image. 

It is an adjusted respin of the Universal Blue base image with the Cosmic desktop added.

To build this image I chose the Universal Blue base image (ghcr.io/ublue-os/base-main:latest). 

My Cosmic has a bare minimum of included applications, no Cosmic store and includes Distrobox.  As an appstore you can install the flatpak of Bazaar.
Flathub support is included in the image, so 'flatpak install bazaar' has to be sufficient.

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
