# SatellaOS ToolBox
## Bu Script 8 farklı aracı tek tıkla çalıştırmaya yarıyor

```bash
wget -qO- https://raw.githubusercontent.com/satellaos-official/satellaos-debian-utilities/refs/heads/main/toolbox.sh | bash
```

# Drivers

## AMD GPU

```bash
sudo apt update

sudo apt install -y firmware-amd-graphics mesa-vulkan-drivers mesa-va-drivers mesa-vdpau-drivers
```

## Intel GPU

```bash
sudo apt update

sudo apt install -y firmware-misc-nonfree intel-media-va-driver i965-va-driver mesa-vulkan-drivers mesa-va-drivers mesa-vdpau-drivers
```

## Bluetooth

```bash
sudo apt update

sudo apt install -y bluetooth bluez blueman

sudo systemctl enable bluetooth
sudo systemctl start bluetooth

systemctl status bluetooth
```

## Touchpad

```bash
sudo mkdir -p /etc/X11/xorg.conf.d

sudo tee /etc/X11/xorg.conf.d/40-libinput.conf > /dev/null <<EOF
Section "InputClass"
  Identifier "libinput touchpad catchall"
  MatchIsTouchpad "on"
  MatchDevicePath "/dev/input/event*"
  Driver "libinput"
  Option "Tapping" "on"
EndSection
EOF
```




# Programs (Programlar)




## 1. Google Chrome (Deb)

![1. Google Chrome (Deb)](https://raw.githubusercontent.com/satellaos-official/satellaos-debian-utilities/main/app-png/chrome.png)

```bash
mkdir -p "$HOME/satellaos-packages"

wget -P "$HOME/satellaos-packages" https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

sudo apt install -y "$HOME/satellaos-packages/google-chrome-stable_current_amd64.deb"
```

## 2. Opera (Deb)

![2. Opera (Deb)](https://raw.githubusercontent.com/satellaos-official/satellaos-debian-utilities/main/app-png/opera.png)

```bash
mkdir -p "$HOME/satellaos-packages"

wget -P "$HOME/satellaos-packages" https://download5.operacdn.com/ftp/pub/opera/desktop/125.0.5729.49/linux/opera-stable_125.0.5729.49_amd64.deb

sudo apt install -y "$HOME/satellaos-packages/opera-stable_125.0.5729.49_amd64.deb"
```

## 3. Vivaldi (Deb)

![3. Vivaldi (Deb)](https://raw.githubusercontent.com/satellaos-official/satellaos-debian-utilities/main/app-png/vivaldi.png)

```bash
mkdir -p "$HOME/satellaos-packages"

wget -P "$HOME/satellaos-packages" https://downloads.vivaldi.com/stable/vivaldi-stable_7.7.3851.66-1_amd64.deb

sudo apt install -y "$HOME/satellaos-packages/vivaldi-stable_7.7.3851.66-1_amd64.deb"
```

## 4. Brave Browser [Deb (Debian, Ubuntu, Mint)]

![4. Brave Browser [Deb (Debian, Ubuntu, Mint)]](https://raw.githubusercontent.com/satellaos-official/satellaos-debian-utilities/main/app-png/brave.png)

```bash
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

sudo curl -fsSLo /etc/apt/sources.list.d/brave-browser-release.sources https://brave-browser-apt-release.s3.brave.com/brave-browser.sources

sudo apt update

sudo apt install -y brave-browser
```

## 5. Firefox ESR [Deb (Debian)]

![5. Firefox ESR [Deb (Debian)]](https://raw.githubusercontent.com/satellaos-official/satellaos-debian-utilities/main/app-png/firefox.png)

```bash
sudo apt install -y firefox-esr
```

## 6. Steam (Deb)

![6. Steam (Deb)](https://raw.githubusercontent.com/satellaos-official/satellaos-debian-utilities/main/app-png/steam.png)

```bash
mkdir -p "$HOME/satellaos-packages"

wget -P "$HOME/satellaos-packages" https://repo.steampowered.com/steam/archive/precise/steam_latest.deb

sudo apt install -y "$HOME/satellaos-packages/steam_latest.deb"
```

## 7. Free Download Manager (Deb)

![7. Free Download Manager (Deb)](https://raw.githubusercontent.com/satellaos-official/satellaos-debian-utilities/main/app-png/free-download-manager.png)

```bash
mkdir -p "$HOME/satellaos-packages"

wget -P "$HOME/satellaos-packages" https://files2.freedownloadmanager.org/6/latest/freedownloadmanager.deb

sudo apt install -y "$HOME/satellaos-packages/freedownloadmanager.deb"
```

## 8. LocalSend (Deb)

![8. LocalSend (Deb)](https://raw.githubusercontent.com/satellaos-official/satellaos-debian-utilities/main/app-png/localsend.png)

```bash
mkdir -p "$HOME/satellaos-packages"

wget -P "$HOME/satellaos-packages" https://github.com/localsend/localsend/releases/download/v1.17.0/LocalSend-1.17.0-linux-x86-64.deb

sudo apt install -y "$HOME/satellaos-packages/LocalSend-1.17.0-linux-x86-64.deb"
```

## 9. LocalSend (Flatpak)

![9. LocalSend (Flatpak)](https://raw.githubusercontent.com/satellaos-official/satellaos-debian-utilities/main/app-png/localsend.png)

```bash
flatpak install -y flathub org.localsend.localsend_app
```

## 10. KDiskMark (Deb)

![10. KDiskMark (Deb)](https://raw.githubusercontent.com/satellaos-official/satellaos-debian-utilities/main/app-png/kdiskmark.png)

```bash
mkdir -p "$HOME/satellaos-packages"

wget -P "$HOME/satellaos-packages" https://github.com/JonMagon/KDiskMark/releases/download/3.2.0/kdiskmark_3.2.0_amd64.deb

sudo apt install -y "$HOME/satellaos-packages/kdiskmark_3.2.0_amd64.deb"
```

## 11. KDiskMark (Flatpak)

![11. KDiskMark (Flatpak)](https://raw.githubusercontent.com/satellaos-official/satellaos-debian-utilities/main/app-png/kdiskmark.png)

```bash
flatpak install -y flathub io.github.jonmagon.kdiskmark
```

## 12. VirtualBox 7.2.4 [Deb (Debian 13)]

![12. VirtualBox 7.2.4 [Deb (Debian 13)]](https://raw.githubusercontent.com/satellaos-official/satellaos-debian-utilities/main/app-png/virtualbox.png)

```bash
mkdir -p "$HOME/satellaos-packages"

wget -P "$HOME/satellaos-packages" https://download.virtualbox.org/virtualbox/7.2.4/virtualbox-7.2_7.2.4-170995~Debian~trixie_amd64.deb

sudo apt install -y "$HOME/satellaos-packages/virtualbox-7.2_7.2.4-170995~Debian~trixie_amd64.deb"

wget -P "$HOME/satellaos-packages" https://download.virtualbox.org/virtualbox/7.2.4/Oracle_VirtualBox_Extension_Pack-7.2.4.vbox-extpack

sudo VBoxManage extpack install --replace --accept-license=eb31505e56e9b4d0fbca139104da41ac6f6b98f8e78968bdf01b1f3da3c4f9ae "$HOME/satellaos-packages/Oracle_VirtualBox_Extension_Pack-7.2.4.vbox-extpack"
```

## 13. GIMP (Deb)

![13. GIMP (Deb)](https://raw.githubusercontent.com/satellaos-official/satellaos-debian-utilities/main/app-png/gimp.png)

```bash
sudo apt install -y gimp
```

## 14. GIMP (Flatpak)

![14. GIMP (Flatpak)](https://raw.githubusercontent.com/satellaos-official/satellaos-debian-utilities/main/app-png/gimp.png)

```bash
flatpak install -y flathub org.gimp.GIMP
```

## 15. Pinta (Flatpak)

![15. Pinta (Flatpak)](https://raw.githubusercontent.com/satellaos-official/satellaos-debian-utilities/main/app-png/pinta.png)

```bash
flatpak install -y flathub com.github.PintaProject.Pinta
```

## 16. PowerISO (Flatpak)

![16. PowerISO (Flatpak)](https://raw.githubusercontent.com/satellaos-official/satellaos-debian-utilities/main/app-png/poweriso.png)

```bash
flatpak install -y flathub com.poweriso.PowerISO
```

## 17. MenuLibre (Deb)

![17. MenuLibre (Deb)](https://raw.githubusercontent.com/satellaos-official/satellaos-debian-utilities/main/app-png/menulibre.png)

```bash
sudo apt install -y menulibre
```

## 18. Sublime Text (Deb)

![18. Sublime Text (Deb)](https://raw.githubusercontent.com/satellaos-official/satellaos-debian-utilities/main/app-png/sublime-text.png)

```bash
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo tee /etc/apt/keyrings/sublimehq-pub.asc > /dev/null

echo -e 'Types: deb\nURIs: https://download.sublimetext.com/\nSuites: apt/stable/\nSigned-By: /etc/apt/keyrings/sublimehq-pub.asc' | sudo tee /etc/apt/sources.list.d/sublime-text.sources

sudo apt-get update

sudo apt-get install -y sublime-text
```

## 19. WineHQ [Deb (Debian 13)]

![19. WineHQ [Deb (Debian 13)]](https://raw.githubusercontent.com/satellaos-official/satellaos-debian-utilities/main/app-png/winehq.png)

```bash
sudo mkdir -pm755 /etc/apt/keyrings
wget -O - https://dl.winehq.org/wine-builds/winehq.key | sudo gpg --dearmor -o /etc/apt/keyrings/winehq-archive.key -

sudo dpkg --add-architecture i386

sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/debian/dists/trixie/winehq-trixie.sources

sudo apt update

sudo apt install -y --install-recommends winehq-stable
```

## 20. Mission Center (Flatpak)

![20. Mission Center (Flatpak)](https://raw.githubusercontent.com/satellaos-official/satellaos-debian-utilities/main/app-png/mission-center.png)

```bash
flatpak install -y flathub io.missioncenter.MissionCenter
```

## 21. GParted (Deb)

![21. GParted (Deb)](https://raw.githubusercontent.com/satellaos-official/satellaos-debian-utilities/main/app-png/gparted.png)

```bash
sudo apt install -y gparted
```

## 22. Gnome Disk Utility (Deb)

![22. Gnome Disk Utility (Deb)](https://raw.githubusercontent.com/satellaos-official/satellaos-debian-utilities/main/app-png/gnome-disk-utility.png)

```bash
sudo apt install -y gnome-disk-utility
```

## 23. VLC (Deb)

![23. VLC (Deb)](https://raw.githubusercontent.com/satellaos-official/satellaos-debian-utilities/main/app-png/vlc.png)

```bash
sudo apt install -y vlc
```

## 24. qBittorrent (Deb)

![24. qBittorrent (Deb)](https://raw.githubusercontent.com/satellaos-official/satellaos-debian-utilities/main/app-png/qbittorrent.png)

```bash
sudo apt install -y qbittorrent
```

## 25. Grub Customizer (Deb)

![25. Grub Customizer (Deb)](https://raw.githubusercontent.com/satellaos-official/satellaos-debian-utilities/main/app-png/grub-customizer.png)

```bash
sudo apt install -y grub-customizer
```

## 26. Galculator (Deb)

![26. Galculator (Deb)](https://raw.githubusercontent.com/satellaos-official/satellaos-debian-utilities/main/app-png/galculator.png)

```bash
sudo apt install -y galculator
```

## 27. Gucharmap (Deb)

![27. Gucharmap (Deb)](https://raw.githubusercontent.com/satellaos-official/satellaos-debian-utilities/main/app-png/gucharmap.png)

```bash
sudo apt install gucharmap
```

## 28. Gnome Software (Deb)

```bash
sudo apt install -y gnome-software gnome-software-plugin-flatpak
```

## 29. Mintstick (Deb)

```bash
sudo apt install -y mintstick
```

## 30. Warp VPN

```bash
curl -fsSL https://pkg.cloudflareclient.com/pubkey.gpg | sudo gpg --yes --dearmor --output /usr/share/keyrings/cloudflare-warp-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/cloudflare-warp-archive-keyring.gpg] https://pkg.cloudflareclient.com/ $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/cloudflare-client.list

sudo apt-get update && sudo apt-get install cloudflare-warp
```

## 31. Disk Usage Analyzer

```bash
sudo apt install -y baobab
```

## 32. Libre Office (Deb)

```bash
sudo apt install -y libreoffice libreoffice-gtk3
```
