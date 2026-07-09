#!/data/data/com.termux/files/usr/bin/bash

while true; do
    clear

    echo "========================================"
    echo "     Termux Desktop Installer"
    echo "========================================"
    echo
    echo "1) Install Everything"
    echo "2) Exit"
    echo

    read -p "Select: " choice

    case "$choice" in
        1)
            bash scripts/00-check.sh
            bash scripts/01-termux.sh
            ;;
        2)
            exit 0
            ;;
        *)
            echo "Invalid option!"
            sleep 2
            ;;
    esac
done
