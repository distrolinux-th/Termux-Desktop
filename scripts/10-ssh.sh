#!/data/data/com.termux/files/usr/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/common.sh"

clear

echo "========================================"
echo "          SSH Configuration"
echo "========================================"

mkdir -p "$HOME/.ssh"

chmod 700 "$HOME/.ssh"

if [ ! -f "$HOME/.ssh/authorized_keys" ]; then
    touch "$HOME/.ssh/authorized_keys"
fi

chmod 600 "$HOME/.ssh/authorized_keys"

success "authorized_keys created."

echo
read -p "Paste your public key (leave empty to skip): " KEY

if [ -n "$KEY" ]; then
    echo "$KEY" >> "$HOME/.ssh/authorized_keys"
    success "SSH key added."
fi
