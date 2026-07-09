#!/data/data/com.termux/files/usr/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/common.sh"

clear

echo "========================================"
echo "      ZSH Installer"
echo "========================================"

proot-distro login debian --shared-tmp -- bash -c "

apt update

apt install -y \
zsh \
git \
curl \
wget \
fonts-powerline

if [ ! -d ~/.oh-my-zsh ]; then

RUNZSH=no

CHSH=no

KEEP_ZSHRC=yes

sh -c \"\$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)\"

fi

if [ ! -d ~/.powerlevel10k ]; then

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.powerlevel10k

echo 'source ~/.powerlevel10k/powerlevel10k.zsh-theme' >> ~/.zshrc

fi

"

success "ZSH installation completed."
