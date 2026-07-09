#!/data/data/com.termux/files/usr/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/common.sh"

clear

echo "========================================"
echo "      Desktop Theme Installer"
echo "========================================"

echo
echo "1) Windows 10"
echo "2) Windows 11"
echo "3) WhiteSur (macOS)"
echo "4) Dracula"
echo "5) Nordic"
echo "6) Skip"
echo

read -p "Select: " THEME

case "$THEME" in

1)
THEME_NAME="Windows10"
;;

2)
THEME_NAME="Windows11"
;;

3)
THEME_NAME="WhiteSur"
;;

4)
THEME_NAME="Dracula"
;;

5)
THEME_NAME="Nordic"
;;

6)
exit 0
;;

*)
error "Invalid option."
;;

esac

info "Installing required packages..."

proot-distro login debian --shared-tmp -- bash -c "

apt update

apt install -y \
git \
curl \
wget \
unzip \
tar \
gtk2-engines-murrine \
gtk2-engines-pixbuf \
sassc

mkdir -p ~/.themes
mkdir -p ~/.icons
mkdir -p ~/.local/share/fonts

"

case "$THEME_NAME" in

Windows10)

info "Installing Windows 10 Theme..."

proot-distro login debian --shared-tmp -- bash -c "

cd /tmp

git clone https://github.com/B00merang-Project/Windows-10.git

cp -r Windows-10 ~/.themes/

"

;;

Windows11)

info "Installing Windows 11 Theme..."

proot-distro login debian --shared-tmp -- bash -c "

cd /tmp

git clone https://github.com/B00merang-Project/Windows-11.git

cp -r Windows-11 ~/.themes/

"

;;

WhiteSur)

info "Installing WhiteSur..."

proot-distro login debian --shared-tmp -- bash -c "

cd /tmp

git clone https://github.com/vinceliuice/WhiteSur-gtk-theme.git

cd WhiteSur-gtk-theme

./install.sh

"

;;

Dracula)

info "Installing Dracula..."

proot-distro login debian --shared-tmp -- bash -c "

cd /tmp

git clone https://github.com/dracula/gtk.git

cp -r gtk ~/.themes/Dracula

"

;;

Nordic)

info "Installing Nordic..."

proot-distro login debian --shared-tmp -- bash -c "

cd /tmp

git clone https://github.com/EliverLara/Nordic.git

cp -r Nordic ~/.themes/

"

;;

esac

success "Theme installation completed."
