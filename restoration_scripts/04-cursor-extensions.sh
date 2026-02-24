#!/usr/bin/env bash

echo "Installing Cursor extensions..."

EXTENSIONS_FILE="$DOTFILES_PATH/editors/cursor/extensions.txt"

if [[ ! -f "$EXTENSIONS_FILE" ]]; then
    echo "Extensions file not found: $EXTENSIONS_FILE"
    exit 1
fi

if ! command -v cursor &>/dev/null; then
    echo "Cursor CLI not found. Open Cursor and run: Cmd+Shift+P → 'Install code command'"
    exit 1
fi

while read -r extension; do
    [[ -z "$extension" ]] && continue
    echo "Installing: $extension"
    cursor --install-extension "$extension" --force
done < "$EXTENSIONS_FILE"

echo "Cursor extensions installed"
dot 