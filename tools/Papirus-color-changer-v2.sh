#!/bin/bash

# Papirus-folders interaktif kurulum ve renk değiştirme scripti
# Sayı ile seçim yapılacak şekilde

# Renk seçenekleri
colors=("adwaita" "blue" "breeze" "carmine" "darkcyan" "green" "indigo" "nordic" "palebrown" "pink" "teal" "white" "yellow" "black" "bluegrey" "brown" "cyan" "deeporange" "grey" "magenta" "orange" "paleorange" "red" "violet" "yaru")

echo "Kullanılabilir renkler:"
for i in "${!colors[@]}"; do
    echo "$((i+1))) ${colors[$i]}"
done

# Kullanıcıdan sayı ile seçim
read -rp "Lütfen bir renk seçin (sayı ile): " choice_num

# Sayının geçerli olup olmadığını kontrol et
if [[ "$choice_num" -ge 1 && "$choice_num" -le "${#colors[@]}" ]]; then
    choice="${colors[$((choice_num-1))]}"
    echo "Seçilen renk: $choice"

    # Papirus-folders kurulumu
    echo "Papirus-folders kuruluyor ve güncelleniyor..."
    wget -qO- https://git.io/papirus-folders-install | sh

    # Renk uygulanıyor
    echo "Seçilen renk uygulanıyor..."
    papirus-folders -C "$choice" --theme Papirus

    # İkon önbelleğini yenile
    echo "İkon önbelleği yenileniyor..."
    sudo gtk-update-icon-cache -f /usr/share/icons/*

    echo "İşlem tamam! Oturumu kapatıp açarsanız değişiklikler görünür."
else
    echo "Hata: Geçersiz seçim."
fi
