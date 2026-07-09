#!/data/data/com.termux/files/usr/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/common.sh"

clear

echo "========================================"
echo "       Storage Configuration"
echo "========================================"

info "Checking storage permission..."

if [ ! -d "$HOME/storage/shared" ]; then
    warning "Storage permission not granted."

    termux-setup-storage

    echo
    read -p "Press ENTER after allowing storage permission..."
fi

if [ ! -d "$HOME/storage/shared" ]; then
    error "Storage permission is still unavailable."
fi

success "Storage permission granted."

info "Creating Debian storage links..."

proot-distro login debian --shared-tmp -- bash -c '

mkdir -p /root/storage

ln -snf /storage/emulated/0 /root/storage/shared

mkdir -p /root/Desktop

mkdir -p /root/Documents

mkdir -p /root/Downloads

mkdir -p /root/Pictures

mkdir -p /root/Music

mkdir -p /root/Movies

ln -snf /storage/emulated/0/Documents /root/Documents

ln -snf /storage/emulated/0/Download /root/Downloads

ln -snf /storage/emulated/0/DCIM /root/Pictures

ln -snf /storage/emulated/0/Music /root/Music

ln -snf /storage/emulated/0/Movies /root/Movies

'

success "Debian storage configured."
