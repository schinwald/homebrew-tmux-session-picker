# homebrew-tmux-session-picker

Homebrew tap for [tmux-session-picker](https://github.com/schinwald/tmux-session-picker).

## Install

```sh
brew tap schinwald/tmux-session-picker
brew install tmux-session-picker
```

## Formula maintenance

Each application release publishes a macOS universal archive containing Apple Silicon and Intel binaries. Update the formula's release URL and SHA-256 for each version, then validate it:

```sh
brew style Formula/tmux-session-picker.rb
brew audit --new --strict schinwald/tmux-session-picker/tmux-session-picker
```
