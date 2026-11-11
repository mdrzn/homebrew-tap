# mdrzn's Homebrew tap

```sh
brew tap mdrzn/tap && brew trust mdrzn/tap                 # once: Homebrew asks you to trust third-party taps
brew install --cask --no-quarantine mdrzn/tap/menustats     # menu bar system monitor
brew install --cask --no-quarantine mdrzn/tap/cursortrail   # cursor trail
brew install --cask --no-quarantine mdrzn/tap/screenshot-uploader   # screenshots → remote Claude Code
```

The apps are open source but not notarized by Apple: `--no-quarantine` avoids the first-launch Gatekeeper block. Without it, allow the app once in *System Settings → Privacy & Security → Open Anyway*.

- [MenuStats](https://github.com/mdrzn/menustats)
- [CursorTrail](https://github.com/mdrzn/cursor-trail)
- [Screenshot Uploader](https://github.com/mdrzn/claude-screenshot-uploader)
