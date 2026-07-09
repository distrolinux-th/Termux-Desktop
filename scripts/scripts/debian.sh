#!/data/data/com.termux/files/usr/bin/bash

# =========================================
# Debian Installer
# =========================================

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/common.sh"

info "Starting Debian installation..."

check_termux
check_internet

if ! command -v proot-distro >/dev/null 2>&1; then
    info "Installing proot-distro..."
    pkg update -y
    pkg install -y proot-distro
fi

if proot-distro list | grep -q "^debian"; then
    warning "Debian is already installed."
else
    info "Installing Debian..."
    proot-distro install debian:stable
fi

success "Debian installation completed."

read -p "Launch Debian now? [Y/n]: " ans
ans=${ans:-Y}

case "$ans" in
    Y|y)
        info "Launching Debian..."
        exec proot-distro login debian
        ;;
    *)
        info "You can start Debian later with:"
        echo "proot-distro login debian"
        ;;
esac
