#!/usr/bin/env bash

REPO_NAME="yamoon"
REPO="https://github.com/maarutan/$REPO_NAME"
REPO_PATH="$HOME/$REPO_NAME"
TODAY=$(date +"%Y-%m-%d-%s")
YAZI="$HOME/.config/yazi"

YAZI_BAKUP() {
    if [[ -d "$YAZI" ]]; then
        mv "$YAZI" "$YAZI"_"$TODAY".bak
        echo -e "\n- you had a Yazi config"
        echo "- backup created: $(ls "$YAZI"_"$TODAY".bak) :D"
    fi
}

CHECK_REPO_HAVE() {
    if [[ ! -d "$REPO_PATH" ]]; then
        if command -v git > /dev/null; then
            echo -e "\n~~~> $REPO_PATH"
            echo "- repo not found :("
            echo "- cloning repo... :D"
            sleep 0.1
            git clone "$REPO" "$YAZI"
        else
            sleep 0.1
            echo "missing dependency: git :("
        fi
    else
        sleep 0.1
        echo -e "\n~~~> $REPO_PATH"
        echo "- repo already exists :D"
    fi
}

START_YAMOON() {
    clear
    echo "welcome to yamoon :D"
    sleep 1
    yazi || { clear; echo "could not start yazi :( "; }
}

IFMAIN() {
    SCRIPT_PATH=$(realpath "${BASH_SOURCE[0]}")
    if [[ -f "$SCRIPT_PATH" ]]; then
        YAZI_BAKUP
        CHECK_REPO_HAVE
        START_YAMOON
        echo "setup complete :D"
    fi
}

IFMAIN

