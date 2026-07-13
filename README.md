# Homebrew ContextLattice Tap

First-party Homebrew tap for ContextLattice.

## Install

```bash
brew tap sheawinkler/contextlattice
brew install --cask contextlattice
```

## Verify

```bash
brew info --cask sheawinkler/contextlattice/contextlattice
brew fetch --cask sheawinkler/contextlattice/contextlattice
```

ContextLattice itself runs through Docker Compose. The cask installs the macOS launcher DMG with the exact checksummed public release payload, runs `gmake quickstart`, installs global agent helpers, and exposes the runtime proof command:

```bash
contextlattice_agent_runtime_proof --pretty
```
