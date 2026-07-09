#!/data/data/com.termux/files/usr/bin/bash

while true; do
    clear

    echo "========================================"
    echo "     Termux Desktop Installer"
    echo "========================================"
    echo
    echo "1) Install Everything"
    echo "2) Install Termux:X11"
    echo "3) Exit"
    echo
    
    read -p "Select: " choice

    case "$choice" in
        1)
            bash scripts/00-check.sh
            bash scripts/01-termux.sh
            bash scripts/02-termux-x11.sh
            ;;
        2)  
            bash scripts/02-termux-x11.sh
            exit 0
            ;;
        3)
            exit 0
            ;;
        *)
            echo "Invalid option!"
            sleep 2
            ;;
    esac
done
