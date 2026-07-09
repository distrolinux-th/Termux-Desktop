#!/data/data/com.termux/files/usr/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/common.sh"

clear

echo "========================================"
echo "      Installation Complete"
echo "========================================"

echo

success "Termux Desktop installed successfully."

echo
echo "Next Commands:"
echo
echo "start        Start Desktop"
echo "stop         Stop Desktop"
echo "debian       Login Debian"
echo "update       Update Termux"

echo

fastfetch 2>/dev/null || true

echo

success "Enjoy your Linux Desktop!"
