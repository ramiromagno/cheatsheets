#!/usr/bin/env bash

# Conversion from SVG to PDF
# Use --export-text-to-path to convert fonts to paths:
inkscape expose_r_fns_with_roxygen2.svg --export-area-page --export-type=pdf --export-filename=expose_r_fns_with_roxygen2.pdf

# Create PNG thumbnail
convert expose_r_fns_with_roxygen2.pdf \
        -bordercolor white \
        -border 0 \
        -background '#DCDDDE' \
        -gravity south -splice 0x16 \
        -gravity north -splice 0x16 \
        -gravity west -splice 8x0 \
        -gravity east -splice 8x0 \
        +append \
        -gravity west -splice 8x0 \
        -gravity east -splice 8x0 \
        -resize 615 \
        expose_r_fns_with_roxygen2.png
