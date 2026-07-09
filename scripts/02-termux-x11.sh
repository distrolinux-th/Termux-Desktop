#!/data/data/com.termux/files/usr/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/common.sh"

info "Installing Termux:X11 packages..."

pkg install -y x11-repo || error "Failed to install x11-repo"

pkg install -y termux-x11-nightly || warning "termux-x11-nightly package not found, skipping."

success "Termux:X11 packages installed."
