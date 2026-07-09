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
- Desktop launcher
- Application menu entry
- Optional Windows 10 theme
- Optional icon pack
- Easy maintenance

---

## Requirements

- Android
- Termux
- Termux:X11 + xfce4
- proot-distro debian
  
---

## Supported Environment

- AMR64 (aarch64)

---

## Repository Structure

## she Repository

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
- Desktop Entry
- Application Menu
- File Associations
- User Configuration

## Scripts

| Script | Description |
|---------|-------------|
| `install.sh` | Main installer |
| `uninstall.sh` | Remove installed components |
| `debian.sh` | Install and configure Debian |
| `termux-x11.sh` | Install and configure Termux:X11 |
| `xfce4.sh` | Install XFCE4 Desktop Environment |
| `dependencies.sh` | Install required dependencies |
| `desktop-entry.sh` | Create desktop and menu entries |
| `theme.sh` | Install desktop theme |
| `icons.sh` | Install icon pack |
| `fonts.sh` | Install fonts |
| `cursor.sh` | Install cursor theme |
| `wallpaper.sh` | Install wallpapers |
| `polkit.sh` | Configure PolicyKit |
| `cleanup.sh` | Clean temporary files |

### `debian.sh`

Installs and configures the Debian environment.

**Tasks**

- Install `proot-distro`
- Install Debian
- Update package lists
- Upgrade installed packages
- Configure APT
- Create required directories
- Verify Debian installation

### `termux-x11.sh`

Installs and configures Termux:X11.

**Tasks**

- Install Termux:X11 packages
- Configure X11 environment
- Set required environment variables
- Configure display settings
- Create launch scripts
- Verify Termux:X11 installation

### `xfce4.sh`

Installs and configures the XFCE4 desktop environment.

**Tasks**

- Install XFCE4 Desktop
- Install XFCE4 plugins
- Install Thunar File Manager
- Configure XFCE4 session
- Configure panel
- Configure desktop settings
- Configure window manager
- Verify XFCE4 installationd

### `dependencies.sh`

Installs all required dependencies for the desktop environment and GitHub Desktop.

**Tasks**

- Update package lists
- Install required system packages
- Install desktop dependencies
- Install library dependencies
- Install utility packages
- Verify installed dependencies

### `desktop-entry.sh`

Creates desktop integration for GitHub Desktop.

**Tasks**

- Create desktop entry (`.desktop`)
- Add application menu shortcut
- Configure application icon
- Set executable permissions
- Refresh desktop database
- Verify desktop integration

### `theme.sh`

Installs and configures desktop themes.

**Tasks**

- Install GTK themes
- Install XFCE4 themes
- Apply default theme
- Configure appearance settings
- Update theme cache
- Verify theme installation

### `icons.sh`

Installs and configures icon themes.

**Tasks**

- Install icon pack
- Configure default icon theme
- Update icon cache
- Apply icon settings
- Configure application icons
- Verify icon installation

### `fonts.sh`

Installs and configures system fonts.

**Tasks**

- Install required fonts
- Install additional fonts
- Update font cache
- Configure font settings
- Apply default fonts
- Verify font installation

### `cursor.sh`

Installs and configures cursor themes.

**Tasks**

- Install cursor theme
- Apply default cursor
- Configure Xcursor settings
- Update cursor cache
- Set cursor size
- Verify cursor installation

### `wallpaper.sh`

Installs and configures desktop wallpapers.

**Tasks**

- Install default wallpapers
- Copy wallpaper files
- Configure default desktop background
- Apply wallpaper settings
- Create wallpaper directory
- Verify wallpaper installation

### `polkit.sh`

Installs and configures PolicyKit (polkit).

**Tasks**

- Install PolicyKit packages
- Configure authentication agent
- Enable required policies
- Configure desktop integration
- Apply permission settings
- Verify PolicyKit installation

### `cleanup.sh`

Performs post-installation cleanup.

**Tasks**

- Remove temporary files
- Clean package cache
- Remove unused packages
- Clear installation logs
- Refresh desktop caches
- Verify cleanup completion
