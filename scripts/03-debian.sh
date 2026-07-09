#!/data/data/com.termux/files/usr/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/common.sh"

clear

echo "========================================"
echo "         Debian Installer"
echo "========================================"

if ! command -v proot-distro >/dev/null 2>&1; then
    error "proot-distro is not installed."
fi

if proot-distro list | grep -q "^debian"; then
    success "Debian is already installed."

    echo
    read -p "Reinstall Debian? (y/N): " reinstall

    case "$reinstall" in
        y|Y)
            info "Removing old Debian..."
            proot-distro remove debian
            ;;
        *)
            exit 0
            ;;
    esac
fi

info "Installing Debian..."

proot-distro install debian || error "Failed to install Debian."

success "Debian installed successfully."

echo
read -p "Login to Debian now? (Y/n): " login

case "$login" in
    n|N)
        ;;
    *)
        proot-distro login debian --shared-tmp
        ;;
esac
