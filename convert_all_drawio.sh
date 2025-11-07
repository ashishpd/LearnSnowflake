#!/bin/bash
# Convert all draw.io files to PNG

DRAWIO_APP="/Applications/draw.io.app/Contents/MacOS/draw.io"
IMAGES_DIR="images"

if [ ! -f "$DRAWIO_APP" ]; then
    echo "Error: draw.io app not found at $DRAWIO_APP"
    exit 1
fi

cd "$(dirname "$0")"

echo "Converting draw.io files to PNG..."
echo ""

for drawio_file in "$IMAGES_DIR"/*.drawio; do
    if [ -f "$drawio_file" ]; then
        filename=$(basename "$drawio_file" .drawio)
        output_file="$IMAGES_DIR/${filename}.png"
        
        echo "Converting: $drawio_file -> $output_file"
        "$DRAWIO_APP" --export --format png --output "$output_file" "$drawio_file" --scale 2
        
        if [ $? -eq 0 ]; then
            echo "  ✓ Success"
        else
            echo "  ✗ Failed"
        fi
        echo ""
    fi
done

echo "Conversion complete!"

