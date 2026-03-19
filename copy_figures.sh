#!/bin/bash

# Script to copy .png, .pdf, .jpg, and .jpeg figures from LuPNT-private output to the latex figures folder
# while maintaining the subdirectory structure and EXCLUDING illegal filenames (with spaces or parentheses).

SOURCE="/home/guillemc/Development/LuPNT-private/output/Aeroconf_Mapping/"
DEST="$(dirname "$0")/figures/"

mkdir -p "$DEST"

rsync -avm \
    --include="*/" \
    --include="*.png" \
    --include="*.pdf" \
    --include="*.jpg" \
    --include="*.jpeg" \
    --exclude="* *" \
    --exclude="*(*" \
    --exclude="*)*" \
    --exclude="*" \
    "$SOURCE" "$DEST"
