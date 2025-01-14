#!/bin/bash

set -e

SCRIPT_DIR="$( cd "$( dirname "$BASH_SOURCE[0]" )" && pwd )"

symlinkFile() {
    filename="$SCRIPT_DIR/$1"
    destination="$HOME/$2/$1"

    mkdir -p $(dirname "$destination")

    if [ -L "$destination" ]; then
        echo -e "[\e[33mWARNING\e[0m] $filename already symlinked"
        return
    fi

    if [ -e "$destination" ]; then
        echo -e "[\e[31mERROR\e[0m] $destination exists but it's not a symlink. Please fix that manually"
        exit 1
    fi

    ln -s "$filename" "$destination"
    echo -e "[\e[32mOK\e[0m] $filename -> $destination"
}

deployManifest() {
    # for row in $(cat $SCRIPT_DIR/$1); do
    file="$SCRIPT_DIR/$1" 
    while IFS= read -r row; do
        # echo "parsing row: '$row'"
        if [[ -z "$row" || "$row" =~ ^#.* ]]; then
            continue
        fi

        filename=$(echo $row | cut -d \| -f 1)
        operation=$(echo $row | cut -d \| -f 2)
        destination=$(echo $row | cut -d \| -f 3)

        case $operation in
            symlink)
                symlinkFile $filename $destination
                ;;

            *)
                echo "[WARNING] Unknown operation $operation. Skipping..."
                ;;
        esac
    done < "$file"
}

if [ -z "$@" ]; then
    echo "Usage: $0 <MANIFEST>"
    echo "ERROR: no MANIFEST file is provided"
    exit 1
fi

deployManifest $1
