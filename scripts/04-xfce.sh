#!/data/data/com.termux/files/usr/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/common.sh"

clear

echo "========================================"
echo "          XFCE Installer"
echo "========================================"

info "Installing XFCE Desktop..."

proot-distro login debian --shared-tmp -- bash -c "
apt update &&
apt install -y \
xfce4 \
xfce4-goodies \
dbus-x11 \
tigervnc-standalone-server \
xfce4-terminal \
thunar \
thunar-archive-plugin \
file-roller \
firefox-esr \
pavucontrol \
pulseaudio \
sudo \
nano \
vim \
git \
curl \
wget \
zip \
unzip \
fastfetch
"

success "XFCE installation completed."
