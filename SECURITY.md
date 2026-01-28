# Security Policy

## Reporting a Vulnerability

The security of this project is important. If you discover a security vulnerability, please follow these steps:

### For Fork-Specific Issues

If the vulnerability is specific to this fork (e.g., in installation scripts or documentation):

1. **DO NOT** open a public issue
2. Email the maintainer directly (check GitHub profile for contact)
3. Include:
   - Description of the vulnerability
   - Steps to reproduce
   - Potential impact
   - Suggested fix (if you have one)

### For AdGuard VPN CLI Issues

If the vulnerability is in the AdGuard VPN CLI application itself:

1. Report it to AdGuard directly through their official channels
2. Visit: https://adguard.com/en/report-security-issue.html
3. Follow AdGuard's security disclosure process

## Supported Versions

This fork maintains installation scripts for:

| Channel  | Supported          |
| -------- | ------------------ |
| Release  | :white_check_mark: |
| Beta     | :white_check_mark: |
| Nightly  | :white_check_mark: |

## Security Best Practices

### When Installing

1. **Verify signatures**: Always verify GPG signatures before installation
   ```bash
   gpg --keyserver 'keys.openpgp.org' --recv-key '28645AC9776EC4C00BCE2AFC0FE641E7235E2EC6'
   gpg --verify /opt/adguardvpn_cli/adguardvpn-cli.sig
   ```

2. **Use HTTPS**: The installation scripts use HTTPS to download binaries
   ```bash
   curl -fsSL https://raw.githubusercontent.com/AdguardTeam/AdGuardVPNCLI/HEAD/scripts/release/install.sh | sh -s -- -v
   ```

3. **Review scripts**: Before running installation scripts, review them:
   ```bash
   curl -fsSL https://raw.githubusercontent.com/AdguardTeam/AdGuardVPNCLI/HEAD/scripts/release/install.sh > install.sh
   less install.sh  # Review the script
   sh install.sh -v
   ```

4. **Check permissions**: Ensure installation directories have appropriate permissions

### For Contributors

1. **Never commit secrets**: Don't commit API keys, passwords, or tokens
2. **Use secure protocols**: Always use HTTPS/SSH for git operations
3. **Validate inputs**: When modifying scripts, validate all user inputs
4. **Follow least privilege**: Scripts should request minimum necessary permissions
5. **Review dependencies**: Be cautious about adding new dependencies

## Known Security Considerations

### Installation Scripts

The installation scripts:
- Download binaries from GitHub releases
- May require sudo/root permissions for system-wide installation
- Create directories and files on the system
- Modify system PATH or configuration

Always review scripts before running them with elevated privileges.

### AdGuard VPN CLI

For security information about AdGuard VPN CLI itself:
- Privacy Policy: https://adguard-vpn.com/privacy.html
- Official website: https://adguard-vpn.com/

## Security Updates

Security-related updates will be:
- Clearly marked in commit messages
- Mentioned in release notes
- Potentially announced via GitHub Security Advisories

## Responsible Disclosure

We follow responsible disclosure practices:
- Give us reasonable time to fix issues before public disclosure
- We will acknowledge your contribution (unless you prefer to remain anonymous)
- We will credit you in security advisories (if applicable)

## Questions?

For security-related questions:
- Check the [AdGuard VPN CLI documentation](README.md)
- Review [AdGuard's security practices](https://adguard.com/en/report-security-issue.html)
- Open an issue (for non-sensitive security questions only)

Thank you for helping keep this project secure!
