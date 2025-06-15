#!/bin/bash

DEST="/root/second_result"
SRC="/root/SurfDock"

# Define extensions of interest (add/remove as needed)
EXTS="sdf|pt|ply|pdb"

echo "Copying generated files modified in the last 2 days..."
mkdir -p "$DEST"

find "$SRC" -type f -mtime -2 \
    -regextype posix-extended -regex ".*\.($EXTS)$" \
    ! -path "$DEST/*" | while read -r file; do

    rel_path="${file#$SRC/}"
    dest_path="$DEST/$rel_path"
    dest_dir=$(dirname "$dest_path")

    mkdir -p "$dest_dir"

    if [[ ! -f "$dest_path" ]]; then
        cp "$file" "$dest_path"
        echo "Copied: $rel_path"
    else
        echo "Skipped (already exists): $rel_path"
    fi
done

echo "✅ Done. Filtered generated files copied to $DEST"

