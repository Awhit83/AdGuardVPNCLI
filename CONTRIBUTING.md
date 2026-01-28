# Contributing to AdGuard VPN CLI

Thank you for your interest in contributing to AdGuard VPN CLI! This guide will help you get started with contributing to this fork.

## Table of Contents

- [Getting Started](#getting-started)
- [How to Contribute](#how-to-contribute)
- [Reporting Bugs](#reporting-bugs)
- [Suggesting Features](#suggesting-features)
- [Pull Request Process](#pull-request-process)
- [Code Style](#code-style)
- [Community](#community)

## Getting Started

1. **Fork the repository** - Click the "Fork" button at the top right of the repository page
2. **Clone your fork**:
   ```bash
   git clone https://github.com/YOUR-USERNAME/AdGuardVPNCLI.git
   cd AdGuardVPNCLI
   ```
3. **Add upstream remote**:
   ```bash
   git remote add upstream https://github.com/Awhit83/AdGuardVPNCLI.git
   ```
4. **Keep your fork in sync**:
   ```bash
   git fetch upstream
   git checkout master
   git merge upstream/master
   ```

## How to Contribute

### Reporting Bugs

Before creating a bug report, please check the [existing issues](https://github.com/Awhit83/AdGuardVPNCLI/issues) to avoid duplicates.

When filing a bug report, please use the bug report template and include:
- AdGuard VPN CLI version
- Operating system and architecture
- Steps to reproduce the issue
- Expected behavior
- Actual behavior
- Screenshots (if applicable)
- Any additional context

### Suggesting Features

Feature requests are welcome! Please use the feature request template and include:
- A clear description of the feature
- Why this feature would be useful
- Possible implementation approaches (if you have ideas)
- Any examples from similar tools

### Pull Request Process

1. **Create a branch** for your changes:
   ```bash
   git checkout -b feature/your-feature-name
   ```
   Use descriptive branch names:
   - `feature/` for new features
   - `fix/` for bug fixes
   - `docs/` for documentation changes
   - `refactor/` for code refactoring

2. **Make your changes**:
   - Keep changes focused and atomic
   - Follow existing code style
   - Update documentation if needed
   - Test your changes thoroughly

3. **Commit your changes**:
   ```bash
   git add .
   git commit -m "Brief description of changes"
   ```
   Write clear, descriptive commit messages.

4. **Push to your fork**:
   ```bash
   git push origin feature/your-feature-name
   ```

5. **Create a Pull Request**:
   - Go to the original repository
   - Click "New Pull Request"
   - Select your fork and branch
   - Fill out the PR template completely
   - Link any related issues

6. **Review process**:
   - Maintainers will review your PR
   - Address any requested changes
   - Once approved, your PR will be merged

## Code Style

### Shell Scripts

- Use `#!/bin/sh` for maximum portability
- Use 2 spaces for indentation
- Quote variables: `"$variable"`
- Use `set -e -u` for error handling
- Add comments for complex logic
- Follow existing patterns in the codebase

### Markdown

- Use ATX-style headers (`#` syntax)
- Add blank lines between sections
- Keep line length reasonable (~80-100 characters when possible)
- Use code blocks with language identifiers

### Git Commits

- Use imperative mood ("Add feature" not "Added feature")
- Keep first line under 72 characters
- Add detailed description if needed
- Reference issues: "Fixes #123" or "Closes #456"

## Testing

### Installation Scripts

Before submitting changes to installation scripts:

1. Test on multiple platforms (if possible):
   - Ubuntu/Debian
   - Fedora/CentOS
   - macOS

2. Test different scenarios:
   - Fresh installation
   - Update from previous version
   - Uninstallation
   - Different installation paths

3. Verify error handling:
   - Missing dependencies
   - Network failures
   - Permission issues

## Documentation

When making changes:

- Update README.md if adding/changing user-facing features
- Update inline comments for complex code
- Update help text if changing command-line options
- Consider adding examples for new features

## Community

- Be respectful and inclusive
- Help others when you can
- Share knowledge and learn from others
- Follow the [Code of Conduct](CODE_OF_CONDUCT.md) (if present)

## Questions?

If you have questions about contributing:

1. Check the [README.md](README.md)
2. Search [existing issues](https://github.com/Awhit83/AdGuardVPNCLI/issues)
3. Open a new issue with the "question" template

## Note About Upstream

This is a fork of the [AdGuard VPN CLI](https://github.com/AdguardTeam/AdGuardVPNCLI). AdGuard VPN CLI is not an open source project, but AdGuard uses GitHub as an open bug tracker. Contributions to this fork may not be accepted upstream, but they can help improve this fork and potentially inspire upstream changes.

## License

By contributing, you agree that your contributions will be licensed under the same license as the project (see [LICENSE](LICENSE) file).

Thank you for contributing! 🎉
