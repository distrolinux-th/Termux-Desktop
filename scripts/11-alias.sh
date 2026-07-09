#!/data/data/com.termux/files/usr/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/common.sh"

clear

echo "========================================"
echo "        Alias Configuration"
echo "========================================"

ALIASES="$HOME/.bashrc"

grep -q "alias debian=" "$ALIASES" || echo "alias debian='proot-distro login debian --shared-tmp'" >> "$ALIASES"

grep -q "alias update=" "$ALIASES" || echo "alias update='pkg update && pkg upgrade -y'" >> "$ALIASES"

grep -q "alias ll=" "$ALIASES" || echo "alias ll='ls -lah'" >> "$ALIASES"

grep -q "alias cls=" "$ALIASES" || echo "alias cls='clear'" >> "$ALIASES"

grep -q "alias grep=" "$ALIASES" || echo "alias grep='grep --color=auto'" >> "$ALIASES"

success "Aliases added."
