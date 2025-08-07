#!/bin/env bash
# ----------------------------------------
# Copyright (c) 2025 maarutan. / Marat Arzymatov All Rights Reserved.
# https://github.com/maarutan/yamoon
# ----------------------------------------
# arch-yazi-deps-check.sh
# Check if yazi dependencies are installed on Arch Linux.
# Does NOT install anything, just reports.
# ----------------------------------------

dependencies_all=("ouch" "mediainfo" "trash-cli" "git" "eza" "resvg" "pdftoppm" "jq" "fd" "p7zip")
dependencies_wayland=("wl-clipboard")
dependencies_x11=("xclip" "xsel")

# Detect session type: Wayland or X11
if [ -n "$WAYLAND_DISPLAY" ]; then
    dependencies_session=("${dependencies_wayland[@]}")
else
    dependencies_session=("${dependencies_x11[@]}")
fi

check_dep() {
    sleep 0.05
    if command -v "$1" >/dev/null 2>&1; then
        echo "✅ Found: $1"
    else
        echo "❌ Missing: $1"
    fi
}

# Check session-specific dependencies
for dep in "${dependencies_session[@]}"; do
    check_dep "$dep"
done

# Check general dependencies
for dep in "${dependencies_all[@]}"; do
    check_dep "$dep"
done
