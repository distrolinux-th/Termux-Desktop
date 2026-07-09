#!/data/data/com.termux/files/usr/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/common.sh"

clear

echo "========================================"
echo "          Repair System"
echo "========================================"

info "Restarting PulseAudio..."

pulseaudio --kill >/dev/null 2>&1

pulseaudio --start

info "Checking Debian..."

proot-distro reset debian >/dev/null 2>&1

info "Checking Storage..."

termux-setup-storage >/dev/null 2>&1

info "Cleaning package cache..."

pkg autoclean -y

pkg clean

success "Repair completed."
