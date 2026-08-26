# homebrew-spotlight-wallpaper

Homebrew tap for [spotlight-wallpaper](https://github.com/maxgoodwin/spotlight-wallpaper),
a macOS menu bar app that rotates your desktop wallpaper through the real Windows
Spotlight daily images, with a photo-info popover.

## Install

```sh
brew install --cask maxgoodwin/spotlight-wallpaper/spotlight-wallpaper
```

This installs **Spotlight Wallpaper.app** to `/Applications` — it's Spotlight-searchable, not
just a CLI binary. Launch it once, then turn on **Launch at login** in its Preferences… to have
it start automatically from then on.

> **First launch:** the app is ad-hoc signed, not notarized by Apple, so macOS will likely warn
> that it "cannot be verified" the first time you open it. Go to **System Settings → Privacy &
> Security → Open Anyway**, then launch it again. You only need to do this once.
