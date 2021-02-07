#!/usr/bin/env bash

# Conversion from SVG to PDF
# Use --export-text-to-path to convert fonts to paths:
inkscape quincunx_cheatsheet_page01.svg --export-area-page --export-type=pdf --export-filename=quincunx_cheatsheet_page01.pdf
inkscape quincunx_cheatsheet_page02.svg --export-area-page --export-type=pdf --export-filename=quincunx_cheatsheet_page02.pdf

# Combine pages
rm quincunx_cheatsheet.pdf
stapler cat quincunx_cheatsheet_page0*.pdf quincunx_cheatsheet.pdf

# Create PNG thumbnail
convert quincunx_cheatsheet.pdf \
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
        -resize 1230 \
        quincunx_cheatsheet.png
