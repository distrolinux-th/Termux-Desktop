#!/data/data/com.termux/files/usr/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/common.sh"

info "Updating Termux..."

pkg update -y || error "Failed to update package list."
pkg upgrade -y || error "Failed to upgrade packages."

info "Installing required packages..."

PACKAGES=(
    git
    curl
    wget
    proot
    proot-distro
    x11-repo
    pulseaudio
    nano
    vim
    tar
    unzip
    zip
)

for pkgname in "${PACKAGES[@]}"; do
    info "Installing $pkgname..."
    pkg install -y "$pkgname" || error "Failed to install $pkgname"
done

success "Termux packages installed successfully."
