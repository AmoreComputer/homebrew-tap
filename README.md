# homebrew-tap

Homebrew tap for [Amore](https://amore.computer/) — distribute macOS apps with Sparkle, code signing, and notarization.

## Install

```bash
brew install --cask AmoreComputer/tap/amore
```

Or tap first, then install:

```bash
brew tap AmoreComputer/tap
brew install --cask amore
```

## Update

```bash
brew upgrade --cask amore
```

Amore also updates itself via Sparkle, so `brew upgrade` will mostly just bump the cask metadata while Sparkle handles the actual app update on next launch.

## Uninstall

```bash
brew uninstall --cask amore
```
