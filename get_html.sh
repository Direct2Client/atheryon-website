#!/bin/bash

# URL to fetch
URL="https://delightful-beach-0d7d00c1e.1.azurestaticapps.net"

# Output file
OUTPUT_FILE="index.html"

# Fetch the HTML
echo "Fetching $URL ..."
curl -s -o "$OUTPUT_FILE" "$URL"

if [ $? -eq 0 ]; then
    echo "HTML saved to $OUTPUT_FILE ✅"
else
    echo "Failed to fetch $URL ❌"
fi
