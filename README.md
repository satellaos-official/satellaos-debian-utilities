# SatellaOS ToolBox
## Bu Script 8 farklı aracı tek tıkla çalıştırmaya yarıyor

```bash
echo "Downloading SatellaOS Toolbox..."

mkdir -p "$HOME/satellaos"

wget "https://raw.githubusercontent.com/satellaos-official/satellaos-debian-utilities/refs/heads/main/toolbox.sh" -O "$HOME/satellaos/toolbox.sh"

chmod +x "$HOME/satellaos/toolbox.sh"

"$HOME/satellaos/toolbox.sh"
```

---

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

---


# Programs

Note: All programs are installed using the SatellaOS Program Installer Tool within the SatellaOS ToolBox utility. 

## 1. Google Chrome (Deb)

![1. Google Chrome (Deb)](https://raw.githubusercontent.com/satellaos-official/satellaos-debian-utilities/main/app-png/01-Chrome.png)

## 2. Opera (Deb)

![2. Opera (Deb)](https://raw.githubusercontent.com/satellaos-official/satellaos-debian-utilities/main/app-png/02-Opera.png)

## 3. Vivaldi (Deb)

![3. Vivaldi (Deb)](https://raw.githubusercontent.com/satellaos-official/satellaos-debian-utilities/main/app-png/03-Vivaldi.png)

## 4. Brave Browser (Deb)

![4. Brave Browser (Deb)](https://raw.githubusercontent.com/satellaos-official/satellaos-debian-utilities/main/app-png/04-Brave.png)

## 5. Firefox ESR (Deb)

![5. Firefox ESR (Deb)](https://raw.githubusercontent.com/satellaos-official/satellaos-debian-utilities/main/app-png/05-Firefox-ESR.png)

## 6. Steam (Deb)

![6. Steam (Deb)](https://raw.githubusercontent.com/satellaos-official/satellaos-debian-utilities/main/app-png/06-steam.png)

## 7. Free Download Manager (Deb)

![7. Free Download Manager (Deb)](https://raw.githubusercontent.com/satellaos-official/satellaos-debian-utilities/main/app-png/07-Free-Download-Manager.png)

## 8. LocalSend (Deb)

![8. LocalSend (Deb)](https://raw.githubusercontent.com/satellaos-official/satellaos-debian-utilities/main/app-png/08%7C09-LocalSend.png)

## 9. LocalSend (Flatpak)

![9. LocalSend (Flatpak)](https://raw.githubusercontent.com/satellaos-official/satellaos-debian-utilities/main/app-png/08%7C09-LocalSend.png)

## 10. KDiskMark (Deb)

![10. KDiskMark (Deb)](https://raw.githubusercontent.com/satellaos-official/satellaos-debian-utilities/main/app-png/10%7C11-KDiskMark.png)

## 11. KDiskMark (Flatpak)

![11. KDiskMark (Flatpak)](https://raw.githubusercontent.com/satellaos-official/satellaos-debian-utilities/main/app-png/10%7C11-KDiskMark.png)

## 12. VirtualBox 7.2.4 (Deb)

![12. VirtualBox 7.2.4 (Deb)](https://raw.githubusercontent.com/satellaos-official/satellaos-debian-utilities/main/app-png/12-VirtualBox.png)

## 13. GIMP (Deb)

![13. GIMP (Deb)](https://raw.githubusercontent.com/satellaos-official/satellaos-debian-utilities/main/app-png/13%7C14-GIMP.png)

## 14. GIMP (Flatpak)

![14. GIMP (Flatpak)](https://raw.githubusercontent.com/satellaos-official/satellaos-debian-utilities/main/app-png/13%7C14-GIMP.png)

## 15. Pinta (Flatpak)

![15. Pinta (Flatpak)](https://raw.githubusercontent.com/satellaos-official/satellaos-debian-utilities/main/app-png/15-Pinta.png)

## 16. PowerISO (Flatpak)

![16. PowerISO (Flatpak)](https://raw.githubusercontent.com/satellaos-official/satellaos-debian-utilities/main/app-png/16-PowerISO.png)

## 17. MenuLibre (Deb)

![17. MenuLibre (Deb)](https://raw.githubusercontent.com/satellaos-official/satellaos-debian-utilities/main/app-png/17-MenuLibre.png)

## 18. Sublime Text (Deb)

![18. Sublime Text (Deb)](https://raw.githubusercontent.com/satellaos-official/satellaos-debian-utilities/main/app-png/18-Sublime-Text.png)

## 19. WineHQ (Deb)

![19. WineHQ (Deb)](https://raw.githubusercontent.com/satellaos-official/satellaos-debian-utilities/main/app-png/19-WineHQ.png)

## 20. Mission Center (Flatpak)

![20. Mission Center (Flatpak)](https://raw.githubusercontent.com/satellaos-official/satellaos-debian-utilities/main/app-png/20-Mission-Center.png)

## 21. GParted (Deb)

![21. GParted (Deb)](https://raw.githubusercontent.com/satellaos-official/satellaos-debian-utilities/main/app-png/21-GParted.png)

## 22. Gnome Disk Utility (Deb)

![22. Gnome Disk Utility (Deb)](https://raw.githubusercontent.com/satellaos-official/satellaos-debian-utilities/main/app-png/22-Gnome-Disk-Utility.png)

## 23. VLC (Deb)

![23. VLC (Deb)](https://raw.githubusercontent.com/satellaos-official/satellaos-debian-utilities/main/app-png/23-VLC.png)

## 24. qBittorrent (Deb)

![24. qBittorrent (Deb)](https://raw.githubusercontent.com/satellaos-official/satellaos-debian-utilities/main/app-png/24-qBittorrent.png)

## 25. Grub Customizer (Deb)

![25. Grub Customizer (Deb)](https://raw.githubusercontent.com/satellaos-official/satellaos-debian-utilities/main/app-png/25-GRUB-Customizer.png)

## 26. Galculator (Deb)

![26. Galculator (Deb)](https://raw.githubusercontent.com/satellaos-official/satellaos-debian-utilities/main/app-png/26-Galculator.png)

## 27. Gucharmap (Deb)

![27. Gucharmap (Deb)](https://raw.githubusercontent.com/satellaos-official/satellaos-debian-utilities/main/app-png/27-Gucharmap.png)

## 28. Gnome Software (Deb)

![28. Gnome Software (Deb)](https://raw.githubusercontent.com/satellaos-official/satellaos-debian-utilities/main/app-png/28-Gnome-Software.png)

## 29. Mintstick (Deb)

![29. Mintstick (Deb)](https://raw.githubusercontent.com/satellaos-official/satellaos-debian-utilities/main/app-png/29-Mintstick-1.png)

![29. Mintstick (Deb)](https://raw.githubusercontent.com/satellaos-official/satellaos-debian-utilities/main/app-png/29-Mintstick-2.png)

## 30. Warp VPN (Deb)

![30. Warp VPN (Deb)](https://raw.githubusercontent.com/satellaos-official/satellaos-debian-utilities/main/app-png/30-Warp-VPN.png)

## 31. Baobab (Deb)

![31. Disk Usage Analyzer (Deb)](https://raw.githubusercontent.com/satellaos-official/satellaos-debian-utilities/main/app-png/31-baobab.png)

## 32. Libre Office (Deb)

![32. Libre Office (Deb)](https://raw.githubusercontent.com/satellaos-official/satellaos-debian-utilities/main/app-png/32-Libreoffice-base.png)

![32. Libre Office (Deb)](https://raw.githubusercontent.com/satellaos-official/satellaos-debian-utilities/main/app-png/32-Libreoffice-calc.png)

![32. Libre Office (Deb)](https://raw.githubusercontent.com/satellaos-official/satellaos-debian-utilities/main/app-png/32-Libreoffice-draw.png)

![32. Libre Office (Deb)](https://raw.githubusercontent.com/satellaos-official/satellaos-debian-utilities/main/app-png/32-Libreoffice-impress.png)

![32. Libre Office (Deb)](https://raw.githubusercontent.com/satellaos-official/satellaos-debian-utilities/main/app-png/32-Libreoffice-math.png)

![32. Libre Office (Deb)](https://raw.githubusercontent.com/satellaos-official/satellaos-debian-utilities/main/app-png/32-Libreoffice-writer.png)

![32. Libre Office (Deb)](https://raw.githubusercontent.com/satellaos-official/satellaos-debian-utilities/main/app-png/32-Libreoffice.png)
