#!/bin/bash

echo "========================================"
echo "  MHR-CFW Go - Build Script"
echo "========================================"
echo ""

if [ ! -f "go.mod" ]; then
    echo "Error: go.mod not found"
    exit 1
fi

echo "Building mhr-cfw-go..."
go build -ldflags "-s -w" -o mhr-cfw-go ./cmd/mhr-cfw

if [ $? -ne 0 ]; then
    echo ""
    echo "Build FAILED!"
    exit 1
fi

echo ""
echo "Build successful: mhr-cfw-go"
echo "========================================"