#!/bin/bash
# Uninstall script for Naviger on macOS
# This script is included in the .pkg and can be run to remove Naviger completely

set -e

echo "🗑️ Uninstalling Naviger..."

if [ -d "/Applications/Naviger.app" ]; then
    echo "Removing application..."
    sudo rm -rf "/Applications/Naviger.app"
    echo "✓ Application removed"
fi

if [ -L "/usr/local/bin/naviger-cli" ] || [ -f "/usr/local/bin/naviger-cli" ]; then
    echo "Removing CLI from PATH..."
    sudo rm -f "/usr/local/bin/naviger-cli"
    echo "✓ CLI has been removed from PATH"
fi

echo "Limpiando registro de paquete..."
sudo pkgutil --forget com.naviger.server 2>/dev/null || true
echo "✓ Package uninstalled successfully"

echo ""
echo "✅ Naviger has been successfully uninstalled"
