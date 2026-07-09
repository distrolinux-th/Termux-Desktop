#!/data/data/com.termux/files/usr/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/common.sh"

clear

echo "========================================"
echo "         PulseAudio Setup"
echo "========================================"

pulseaudio --kill >/dev/null 2>&1

pulseaudio \
    --start \
    --exit-idle-time=-1

success "PulseAudio started."
