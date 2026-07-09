#!/data/data/com.termux/files/usr/bin/bash

source "$(dirname "$0")/common.sh"

info "Checking environment..."

ARCH=$(uname -m)

success "Architecture : $ARCH"

ANDROID=$(getprop ro.build.version.release)

success "Android : $ANDROID"

check_internet
