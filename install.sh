#!/bin/bash

# colors
RESET='\033[0m'
BOLD='\033[1m'

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
CYAN='\033[0;36m'

REPO_NAME="yamoon"
REPO="https://github.com/maarutan/$REPO_NAME"
REPO_PATH="$HOME/$REPO_NAME"
TODAY=$(date +"%Y-%m-%d-%s")
YAZI="$HOME/.config/yazi"

NOBAKUP=false

for arg in "$@"; do
    case $arg in
        --nobackup |-nb)
            NOBAKUP=true
            ;;
    esac
done

YAZI_BAKUP() {
    if [[  "$NOBAKUP" != true ]]; then
        if [[ -d "$YAZI" ]]; then
            mv "$YAZI" "$YAZI"_"$TODAY".bak
            echo -e "\n${YELLOW}- you had a Yazi config${RESET}"
            sleep 0.5
            echo -e "${GREEN}- backup created: ${YAZI}_${TODAY}.bak :D${RESET}\n"
            sleep 1
        fi
    fi
}

CHECK_REPO_HAVE() {
    if [[ ! -d "$REPO_PATH" ]]; then
        if command -v git > /dev/null; then
            sleep 0.5
            echo -e "\n${CYAN}~~~> $REPO_PATH${RESET}"
            sleep 0.5
            echo -e "${RED}- repo not found :(${RESET}"
            sleep 0.5
            echo -e "${GREEN}- cloning repo... :D${RESET}\n"
            sleep 1.5
            git clone --depth 1 "$REPO" "$YAZI"
        else
            sleep 0.1
            echo -e "${RED}missing dependency: git :(${RESET}"
        fi
    else
        echo -e "\n${CYAN}~~~> $REPO_PATH${RESET}"
        sleep 0.5
        echo -e "${GREEN}- repo already exists :D${RESET}\n"
        sleep 1.5
    fi
}

START_YAMOON() {
    clear
    echo -e "${BOLD}welcome to yamoon :D${RESET}"
    sleep 1.5
    yazi || { clear; echo -e "${RED}could not start yazi :( ${RESET}"; }
}

IFMAIN() {
    if [[ "${BASH_SOURCE[0]}" != "" ]]; then
        YAZI_BAKUP
        CHECK_REPO_HAVE
        START_YAMOON
        echo -e "${GREEN}setup complete :D${RESET}"
    fi
}

IFMAIN

