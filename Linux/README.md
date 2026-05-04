# MHR-CFW Go - Linux / Termux

Scripts to build and run MHR-CFW on Linux and Termux (Android).

## Requirements

### Linux
- Go 1.22+
- Git

### Termux
```bash
pkg install golang git
```

## Quick Start

### 1. Clone the project (or copy Linux folder)
```bash
git clone https://github.com/ThisIsDara/mhr-cfw-go.git
cd mhr-cfw-go/Linux
```

### 2. Build
```bash
chmod +x build.sh
./build.sh
```

### 3. Run
```bash
chmod +x run.sh
./run.sh
```

Or run directly:
```bash
./mhr-cfw-go
```

## Scripts

| Script | Description |
| --- | --- |
| `build.sh` | Build the Go binary |
| `run.sh` | Run the proxy |
| `termux-setup.sh` | Install dependencies and build for Termux |

## Usage

```bash
# Run with menu
./mhr-cfw-go

# Run without menu
./mhr-cfw-go --no-menu

# Install CA certificate
./mhr-cfw-go --install-cert

# Show version
./mhr-cfw-go --version
```

## Default Ports
- HTTP Proxy: `127.0.0.1:8080`
- SOCKS5 Proxy: `127.0.0.1:1080`

## Termux Notes

1. Install Termux from F-Droid or Play Store
2. Run `termux-setup.sh` to install dependencies
3. The proxy will work the same as on desktop

## Stopping

Press `Ctrl+C` to stop the proxy.