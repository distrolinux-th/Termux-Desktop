#!/data/data/com.termux/files/usr/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/common.sh"

clear

echo "========================================"
echo "      Code Editor Installer"
echo "========================================"
echo
echo "1) VSCodium"
echo "2) code-server"
echo "3) Both"
echo "4) Skip"
echo

read -p "Select: " OPTION

case "$OPTION" in

1)

info "Installing VSCodium..."

proot-distro login debian --shared-tmp -- bash -c "

apt update

apt install -y \
wget \
curl \
gnupg \
software-properties-common

mkdir -p /etc/apt/keyrings

wget -qO- https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg \
| gpg --dearmor \
-o /etc/apt/keyrings/vscodium.gpg

echo 'deb [ signed-by=/etc/apt/keyrings/vscodium.gpg ] https://download.vscodium.com/debs vscodium main' \
> /etc/apt/sources.list.d/vscodium.list

apt update

apt install -y codium

"

;;

2)

info "Installing code-server..."

proot-distro login debian --shared-tmp -- bash -c "

curl -fsSL https://code-server.dev/install.sh | sh

"

;;

3)

info "Installing VSCodium and code-server..."

proot-distro login debian --shared-tmp -- bash -c "

apt update

apt install -y \
wget \
curl \
gnupg \
software-properties-common

mkdir -p /etc/apt/keyrings

wget -qO- https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg \
| gpg --dearmor \
-o /etc/apt/keyrings/vscodium.gpg

echo 'deb [ signed-by=/etc/apt/keyrings/vscodium.gpg ] https://download.vscodium.com/debs vscodium main' \
> /etc/apt/sources.list.d/vscodium.list

apt update

apt install -y codium

curl -fsSL https://code-server.dev/install.sh | sh

"

;;

4)

exit 0

;;

*)

error "Invalid option."

;;

esac

success "Editor installation completed."
