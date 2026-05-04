#!/bin/bash

# Termux setup script for MHR-CFW Go

echo "========================================"
echo "  MHR-CFW Go - Termux Setup"
echo "========================================"
echo ""

# Check if running in Termux
if [ ! -d "$PREFIX" ]; then
    echo "Error: This script must be run in Termux"
    exit 1
fi

echo "Installing dependencies..."
pkg update -y
pkg install -y golang git

echo ""
echo "Building mhr-cfw-go..."
go build -ldflags "-s -w" -o mhr-cfw-go ./cmd/mhr-cfw

if [ $? -ne 0 ]; then
    echo ""
    echo "Build FAILED!"
    exit 1
fi

echo ""
echo "Build successful!"
echo ""
echo "Run: ./run.sh"
echo "========================================"