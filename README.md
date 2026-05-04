# MHR-CFW Go

A domain-fronted HTTP/HTTPS proxy relay suite for Apps Script written in Go.

## Features

- **HTTP Proxy** - Local proxy server with CONNECT tunnel support
- **SOCKS5 Proxy** - Built-in SOCKS5 server
- **Domain Fronting** - Google Apps Script relay via domain-fronted requests
- **MITM Proxy** - Dynamic certificate generation for HTTPS interception
- **HTTP/2 Transport** - Performance-optimized HTTP/2 connections
- **TUI Menu** - Interactive terminal menu for easy operation

## Usage

```powershell
# Run with TUI menu
.\mhr-cfw-go.exe

# Run proxy directly (requires configured config.json)
.\mhr-cfw-go.exe --no-menu

# Install CA certificate
.\mhr-cfw-go.exe --install-cert

# Scan Google IPs
.\mhr-cfw-go.exe --scan

# Show version
.\mhr-cfw-go.exe --version
```

## Configuration

Edit `config.json` before running:

```json
{
  "auth_key": "your-secret-key",
  "script_id": "YOUR_APPS_SCRIPT_DEPLOYMENT_ID",
  "front_domain": "www.google.com",
  "google_ip": "216.239.38.120"
}
```

## Requirements

- Go 1.21+
- Windows (for certificate installation)

## Building

```powershell
go build -o mhr-cfw-go.exe ./cmd/mhr-cfw
```

## License

MIT