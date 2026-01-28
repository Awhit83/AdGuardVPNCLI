#!/bin/sh
# AdGuard VPN CLI Aliases
# Source this file in your shell configuration (~/.bashrc, ~/.zshrc, etc.)
# to enable convenient aliases for AdGuard VPN CLI

# Main alias - short name
if command -v advpn-c >/dev/null 2>&1; then
    # Alias full name to short name
    alias adguardvpn-cli='advpn-c'
    alias adguard-vpn-cli='advpn-c'
    alias adguardvpn='advpn-c'
    alias agvpn='advpn-c'
fi

# Usage information
# Add the following line to your ~/.bashrc or ~/.zshrc:
#   [ -f /opt/adguardvpn_cli/aliases.sh ] && source /opt/adguardvpn_cli/aliases.sh
# Or if installed in a custom location:
#   [ -f /path/to/your/install/aliases.sh ] && source /path/to/your/install/aliases.sh