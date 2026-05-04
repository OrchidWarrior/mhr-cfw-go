#!/bin/bash

echo "========================================"
echo "  MHR-CFW Go"
echo "========================================"
echo ""

if [ ! -f "mhr-cfw-go" ]; then
    echo "Error: mhr-cfw-go not found"
    echo "Run build.sh first to build the executable"
    exit 1
fi

echo "Starting proxy server..."
echo ""
echo "Default: http://127.0.0.1:8080"
echo "Default SOCKS5: 127.0.0.1:1080"
echo ""
echo "Press Ctrl+C to stop"
echo "========================================"
echo ""

./mhr-cfw-go "$@"