#!/data/data/com.termux/files/usr/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/common.sh"

clear

echo "========================================"
echo "        Termux:X11 Installer"
echo "========================================"

# Check Architecture
ARCH=$(uname -m)

case "$ARCH" in
    aarch64)
        success "Architecture : ARM64"
        ;;
    arm*)
        warning "Architecture : ARM"
        ;;
    x86_64)
        success "Architecture : x86_64"
        ;;
    *)
        error "Unsupported architecture : $ARCH"
        ;;
esac

# Check Android
ANDROID=$(getprop ro.build.version.release)
SDK=$(getprop ro.build.version.sdk)

success "Android : $ANDROID (SDK $SDK)"

# Check Internet
if ping -c 1 8.8.8.8 >/dev/null 2>&1; then
    success "Internet : OK"
else
    error "Internet : Not Connected"
fi

# Check Storage
if [ -d "$HOME/storage/shared" ]; then
    success "Storage Permission : OK"
else
    warning "Storage Permission : Missing"
fi

# Check termux-x11 package
if command -v termux-x11 >/dev/null 2>&1; then
    success "termux-x11 package : Installed"
else
    warning "termux-x11 package : Missing"

    pkg install -y x11-repo || error "Failed to install x11-repo"

    pkg install -y termux-x11-nightly || error "Failed to install termux-x11-nightly"
fi

# Check Android App
if am start -n com.termux.x11/com.termux.x11.MainActivity >/dev/null 2>&1; then
    success "Termux:X11 App : Installed"
else
    warning "Termux:X11 App : Not Installed"

    echo
    echo "1) GitHub Release"
    echo "2) F-Droid"
    echo "3) Skip"
    echo

    read -p "Select : " choice

    case "$choice" in
        1)
            am start -a android.intent.action.VIEW \
            -d "https://github.com/termux/termux-x11/releases"
            ;;
        2)
            am start -a android.intent.action.VIEW \
            -d "https://f-droid.org/packages/com.termux.x11/"
            ;;
        3)
            ;;
        *)
            warning "Invalid option."
            ;;
    esac
fi

# Check PulseAudio
if command -v pulseaudio >/dev/null 2>&1; then
    success "PulseAudio : Installed"
else
    warning "PulseAudio : Missing"
fi

success "Termux:X11 Check Completed"
