#!/bin/bash

# GIMP Installer

echo "Choose GIMP installation method:"
echo "1) Flatpak (Most up-to-date)"
echo "2) DPKG / APT (More stable on Debian)"

echo
read -p "Choice (1-2): " choice

case "$choice" in
    1)
        echo "Installing GIMP via Flatpak (latest version)..."
        flatpak install -y flathub org.gimp.GIMP
        ;;
    2)
        echo "Installing GIMP via APT (Debian repository)..."
        sudo apt update
        sudo apt install -y gimp
        ;;
    *)
        echo "Invalid choice!"
        exit 1
        ;;
esac
