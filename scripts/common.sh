#!/data/data/com.termux/files/usr/bin/bash

# =========================================
# Common Functions
# =========================================

RED='\033[1;31m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
BLUE='\033[1;34m'
NC='\033[0m'

info() {
    echo -e "${BLUE}[INFO]${NC} $1"
}

success() {
    echo -e "${GREEN}[ OK ]${NC} $1"
}

warning() {
    echo -e "${YELLOW}[WARN]${NC} $1"
}

error() {
    echo -e "${RED}[FAIL]${NC} $1"
    exit 1
}

check_termux() {
    [ -d "/data/data/com.termux" ] || error "Please run this script inside Termux."
}

check_command() {
    command -v "$1" >/dev/null 2>&1 || error "$1 is not installed."
}

check_internet() {
    if ping -c 1 8.8.8.8 >/dev/null 2>&1; then
        success "Internet connection detected."
    else
        error "No internet connection."
    fi
}
