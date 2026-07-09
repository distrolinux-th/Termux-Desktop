# GitHub Desktop XFCE4 + Debian Package

A complete installer for GitHub Desktop on Debian running inside Termux using XFCE4 Desktop Environment.

---

## OverviewGitHub
GitHub Desktop XFCE4 + Debian Package is an automated installer for running GitHub Desktop inside a Debian proot environment on Termux with the XFCE4 desktop environment.

The project installs the required packages, configures the desktop environment, creates application shortcuts, and prepares the system for daily use with minimal manual setup.

## Features

- Automated installation
- Debian (proot-distro)
- XFCE4 Desktop Environment
- Termux:X11 support
- GitHub Desktop
- Desktop launcher
- Application menu entry
- Optional Windows 10 theme
- Optional icon pack
- Easy maintenance

---

## Screenshots

### GitHub Desktop

![GitHub Desktop](screenshots/github-desktop.png)

### XFCE4 Desktop

![XFCE4 Desktop](screenshots/xfce4-desktop.png)

### Application Menu

![Application Menu](screenshots/application-menu.png)

### File Manager

![File Manager](screenshots/file-manager.png)

## Requirements

- Android
- Termux
- Termux:X11
- proot-distro
- Debian

---

## Supported Environment

- arm64 (aarch64)

---

## Repository Structure

## Installation

### Clone Repository

```bash
git clone https://github.com/distrolinux-th/github-desktop-xfce4.git
```

### Enter Repository

```bash
cd github-desktop-xfce4
```

### Grant Execute Permission

```bash
chmod +x install.sh
```

### Run Installer

```bash
./install.sh
```

## Usage

```bash
proot-distro login debian
```

...

## Directory Layout

```text
install.sh
uninstall.sh
README.md
LICENSE
scripts/
assets/
docs/
```

## Unistall

Run the uninstall script:

```bash
chmod +x uninstall.sh
./uninstall.sh
```

## Configuration

The installer automatically configures:

- Debian (proot-distro)
- XFCE4 Desktop Environment
- Termux:X11
- Git
- GitHub Desktop
- Desktop Entry
- Application Menu
- File Associations
- User Configuration

## Scripts

| Script | Description |
|---------|-------------|
| `install.sh` | Main installer |
| `uninstall.sh` | Remove installed components |
| `scripts/debian.sh` | Install and configure Debian |
| `scripts/termux-x11.sh` | Install and configure Termux:X11 |
| `scripts/xfce4.sh` | Install XFCE4 Desktop Environment |
| `scripts/dependencies.sh` | Install required dependencies |
| `scripts/git.sh` | Install and configure Git |
| `scripts/github-desktop.sh` | Install GitHub Desktop |
| `scripts/desktop-entry.sh` | Create desktop and menu entries |
| `scripts/theme.sh` | Install desktop theme |
| `scripts/icons.sh` | Install icon pack |
| `scripts/fonts.sh` | Install fonts |
| `scripts/cursor.sh` | Install cursor theme |
| `scripts/wallpaper.sh` | Install wallpapers |
| `scripts/polkit.sh` | Configure PolicyKit |
| `scripts/cleanup.sh` | Clean temporary files |

### `scripts/debian.sh`

Installs and configures the Debian environment.

**Tasks**

- Install `proot-distro`
- Install Debian
- Update package lists
- Upgrade installed packages
- Configure APT
- Create required directories
- Verify Debian installation

### `scripts/termux-x11.sh`

Installs and configures Termux:X11.

**Tasks**

- Install Termux:X11 packages
- Configure X11 environment
- Set required environment variables
- Configure display settings
- Create launch scripts
- Verify Termux:X11 installation

### .sh

### 04-desktop.sh Credits
