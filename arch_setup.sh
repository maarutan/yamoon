#!/bin/env bash
# ----------------------------------------
# Copyright (c) 2025 maarutan. / Marat Arzymatov All Rights Reserved.
# https://github.com/maarutan/yamoon
# ----------------------------------------
# arch_setup.sh
# Installer for yazi dependencies on Arch Linux.
# User must specify how to run privileged commands.
# ----------------------------------------

# Ask user which privilege command to use (sudo, doas, su -c, or empty)
echo "Enter the command you use for privilege elevation (e.g. sudo, doas, su -c, or leave blank if running as root):"
read -r ELEVATE

# If using 'su -c', wrap each command in quotes
run_elevated() {
    if [[ "$ELEVATE" == "su -c" ]]; then
        su -c "$1"
    elif [[ -n "$ELEVATE" ]]; then
        $ELEVATE $1
    else
        eval "$1"
    fi
}

# Define base dependencies required for yazi
dependencies_all=("ouch" "mediainfo" "trash-cli" "git" "eza" "resvg" "pdftoppm" "jq" "fd" "p7zip")

# Define session-specific dependencies
dependencies_wayland=("wl-clipboard")
dependencies_x11=("xclip" "xsel")

# Detect session: Wayland or X11
if [ -n "$WAYLAND_DISPLAY" ]; then
    dependencies_session=("${dependencies_wayland[@]}")
else
    dependencies_session=("${dependencies_x11[@]}")
fi

# Install a single dependency if not already installed
install_dep() {
    sleep 0.05
    if ! command -v "$1" >/dev/null 2>&1; then
        echo "📦 Installing: $1"
        run_elevated "pacman -S --noconfirm --needed $1"
    else
        echo "✅ Already installed: $1"
    fi
}

# Install session-specific dependencies
for dep in "${dependencies_session[@]}"; do
    install_dep "$dep"
done

# Install general dependencies
for dep in "${dependencies_all[@]}"; do
    install_dep "$dep"
done

