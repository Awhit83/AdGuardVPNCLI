<p align="center">
<picture>
<source media="(prefers-color-scheme: dark)" srcset="https://cdn.adguard.com/public/Adguard/Common/Logos/vpn_logo_dark_cli.svg" width="300px" alt="AdGuard VPN CLI" />
<img src="https://cdn.adguard.com/public/Adguard/Common/Logos/vpn_logo_light_cli.svg?" width="300px" alt="AdGuard VPN CLI" />
</picture>
</p>

<h3 align="center">Fast, flexible and reliable VPN solution for command-line enthusiasts</h3>

<p align="center">
  Your online safety and anonymity guaranteed by a trusted developer.
</p>

<p align="center">
    <a href="https://adguard-vpn.com/">Website</a> |
    <a href="https://reddit.com/r/Adguard">Reddit</a> |
    <a href="https://twitter.com/AdGuard">Twitter</a> |
    <a href="https://t.me/adguard_en">Telegram</a>
    <br /><br />
    <a href="https://github.com/AdguardTeam/AdguardVPNCLI/releases/"><img src="https://img.shields.io/github/tag/AdguardTeam/AdGuardVPNCLI.svg?label=release&filter=*release" alt="Latest release" /></a>
    <a href="https://github.com/AdguardTeam/AdguardVPNCLI/releases/"><img src="https://img.shields.io/github/tag-pre/AdguardTeam/AdGuardVPNCLI.svg?label=beta&filter=*beta" alt="Beta version" /></a>
    <a href="https://github.com/AdguardTeam/AdguardVPNCLI/releases/"><img src="https://img.shields.io/github/tag-pre/AdguardTeam/AdGuardVPNCLI.svg?label=nightly&filter=*nightly" alt="Nightly version" /></a>

<p align="center">
<img src="https://cdn.adtidy.org/content/release_notes/vpn/cli/v1.0/adguardvpn-cli_connect.gif" width = "600"px>
</p>

> ### Disclaimer
>* AdGuard VPN CLI is not an open source project. We use GitHub as an open bug tracker for users to see what developers are working on. However, we at AdGuard create [a lot of open source software](https://github.com/search?o=desc&q=topic%3Aopen-source+org%3AAdguardTeam+fork%3Atrue&s=stars&type=Repositories).
> * Privacy policy: https://adguard-vpn.com/privacy.html

## Overview

AdGuard VPN CLI provides a command-line interface for managing VPN connection.

## Installation

To install the latest version of AdGuard VPN CLI, run the following command:

Release channel:

```shell
curl -fsSL https://raw.githubusercontent.com/AdguardTeam/AdGuardVPNCLI/HEAD/scripts/release/install.sh | sh -s -- -v
```

Beta channel:

```shell
curl -fsSL https://raw.githubusercontent.com/AdguardTeam/AdGuardVPNCLI/HEAD/scripts/beta/install.sh | sh -s -- -v
```

Nightly channel:

```shell
curl -fsSL https://raw.githubusercontent.com/AdguardTeam/AdGuardVPNCLI/HEAD/scripts/nightly/install.sh | sh -s -- -v
```

## Verify Releases

Inside an archive file there's a small file with `.sig` extension which contains the signature data. In a hypothetic
situation when the binary file inside an archive is replaced by someone, you'll know that it isn't an official release
from AdGuard.

To verify the signature, you need to have the `gpg` tool installed.

First, import the AdGuard public key:

```shell
gpg --keyserver 'keys.openpgp.org' --recv-key '28645AC9776EC4C00BCE2AFC0FE641E7235E2EC6'
```

Then, verify the signature:
    
```shell
gpg --verify /opt/adguardvpn_cli/adguardvpn-cli.sig 
```  

If you use custom installation path, replace `/opt/adguardvpn_cli/adguardvpn-cli.sig` with the path to the signature
file. It should be in the same directory as the binary file.

You'll see something like this:

```
gpg: assuming signed data in 'adguardvpn-cli'
gpg: Signature made Wed Feb 28 19:24:43 2024 +08
gpg:                using RSA key 28645AC9776EC4C00BCE2AFC0FE641E7235E2EC6
gpg:                issuer "devteam@adguard.com"
gpg: Good signature from "AdGuard <devteam@adguard.com>" [ultimate]
```

Check the following:
- RSA key: must be `28645AC9776EC4C00BCE2AFC0FE641E7235E2EC6`;
- issuer name: must be `AdGuard`;
- E-mail address: must be `devteam@adguard.com`;

There may also be the following warning:

```
gpg: WARNING: The key's User ID is not certified with a trusted signature!
gpg:          There is no indication that the signature belongs to the owner.
Primary key fingerprint: 2864 5AC9 776E C4C0 0BCE  2AFC 0FE6 41E7 235E 2EC6
```

## Usage

Run `adguardvpn-cli [command]` to use the VPN service. Below are the available commands and their options:

### General Options

- `-h, --help`: Print the help message and exit.
- `--help-all`: Expand all help.
- `-v, --version`: Display program version information and exit.

### Subcommands

Each subcommand has its own set of options. Run `adguardvpn-cli [command] --help` to see the list of available options.

## Log in and log out

To log in or create an account, type:

    adguardvpn-cli login

When prompted with the menu:

    b - Open link in browser
    s - Speed up check
    x - Cancel

select `b` to open the authentication page in your default browser. Enter your email address. Once you are logged in, you will see the message *Successfully logged in* in the Terminal.

You can set up your preferred login method (password or one-time code) and two-factor authentication in your [AdGuard account](https://adguardaccount.com/account/settings).

>**Note:**
You can also create an AdGuard account on our [website](https://auth.adguardaccount.com/login.html) and then log in to AdGuard VPN for Linux using your credentials.


To log out of AdGuard VPN, type:

    adguardvpn-cli logout

#### list-locations

List all available VPN locations.

- `count INT`: Number of locations to display, sorted by ping.
- `--bash-completion TEXT`: List suggestions for bash-completion.

#### connect

Connect to the VPN service.

- `-l, --location TEXT`: Specify the location to connect to (city name, country name, or ISO code). Defaults to the last used location.
- `-f, --fastest`: Connect to the fastest available location.
- `-v, --verbose`: Show log from the VPN service.
- `--no-fork`: Do not fork the VPN service to the background.
- `-y, --yes`: Automatically answer 'yes' to all questions.
- `-4, --ipv4only`: Force the application to connect only to IPv4 servers.
- `-6, --ipv6only`: Force the application to connect only to IPv6 servers.

#### disconnect

Stop the VPN service.

#### status

Display the current status of the VPN service.

#### license

Get license information.

#### config

Configure the VPN service with the following subcommands:

- `set-mode`: Set VPN operating mode (TUN/SOCKS). SOCKS default address is `127.0.0.1:1080`. You can adjust the port number.
- `set-dns`: Set the DNS upstream server.
- `set-socks-port`: Set the SOCKS port.
- `set-socks-host`: Set the SOCKS listen host. For non-localhost addresses, you need to protect the proxy with a username and password.
- `set-socks-username`: Set the SOCKS username.
- `set-socks-password`: Set the SOCKS password.
- `clear-socks-auth`: Clear the SOCKS username and password.
- `set-system-dns`: Set the system DNS servers.
- `set-tun-routing-mode`: Set VPN tunnel routing mode (AUTO/SCRIPT/NONE).
- `create-route-script`: Create a route script with proper permissions.
- `send-reports`: Send crash reports to developers.
- `set-update-channel`: Set the update channel (release, beta, nightly).
- `set-protocol`: Set the protocol used by AdGuard VPN. Available values: `auto`, `http2`, `quic`
- `set-show-hints`: Show hints after command execution.
- `set-debug-logging`: Enable or disable debug logging.
- `set-show-notifications`: Show notifications about the VPN connection status.
- `show`: Show the current configuration.

#### check-update

Check for updates to the VPN service.

#### export-logs

Export logs to a zip file.

- `-o, --output TEXT`: Path to the output artifact. Can be a directory.
- `-f, --force`: Overwrite the output artifact without asking.

#### update

Install the latest version if available.

- `-v, --verbose`: Show update script output.
- `-y, --yes`: Automatically answer 'yes' to all questions.

#### site-exclusions

Control site exclusions with the following subcommands:

- `add`: Add specified exclusions.
- `remove`: Remove specified exclusions.
- `show`: Show all exclusions.
- `clear`: Clear all exclusions.
- `mode`: Set VPN exclusion mode (general/selective) or show the current mode if no options are passed.

## Development

### Contributing

We welcome contributions! Please see [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines on how to contribute to this project.

### Repository Structure

```
.
├── .github/              # GitHub configuration
│   ├── ISSUE_TEMPLATE/   # Issue templates
│   └── workflows/        # GitHub Actions workflows
├── scripts/              # Installation scripts
│   ├── beta/            # Beta channel installer
│   ├── nightly/         # Nightly channel installer
│   └── release/         # Release channel installer
├── CONTRIBUTING.md       # Contribution guidelines
├── LICENSE              # License information
├── README.md            # This file
└── SECURITY.md          # Security policy
```

### Testing Installation Scripts

To test installation scripts locally:

1. Review the script before running:
   ```bash
   less scripts/release/install.sh
   ```

2. Test in a safe environment (VM or container recommended):
   ```bash
   sh scripts/release/install.sh -v -o /tmp/test-install
   ```

3. Test different scenarios:
   - Fresh installation: `sh scripts/release/install.sh -v`
   - Custom path: `sh scripts/release/install.sh -v -o /custom/path`
   - Uninstall: `sh scripts/release/install.sh -u`

### Keeping Your Fork Updated

To keep your fork in sync with upstream:

```bash
# Add upstream remote (first time only)
git remote add upstream https://github.com/Awhit83/AdGuardVPNCLI.git

# Fetch and merge updates
git fetch upstream
git checkout master
git merge upstream/master
git push origin master
```

## License

This fork's scripts and documentation are licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

**Note:** AdGuard VPN CLI itself is proprietary software. This repository only contains installation scripts and documentation. See AdGuard's [privacy policy](https://adguard-vpn.com/privacy.html) for more information.

## Security

For security concerns, please see our [Security Policy](SECURITY.md).

## Support

- **Issues**: [GitHub Issues](https://github.com/Awhit83/AdGuardVPNCLI/issues)
- **Discussions**: Use GitHub Discussions for questions and community support
- **Official AdGuard Support**: For issues with AdGuard VPN CLI itself, contact [AdGuard Support](https://adguard-vpn.com/)
