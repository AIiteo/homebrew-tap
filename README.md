# Hoardless Homebrew tap

[Hoardless](https://hoardless.app) is a native disk space analyzer and cleaner for macOS 14 and later. It shows every byte by folder, app and date, finds developer caches, and previews each removal before moving it to the Trash with an undo log.

```bash
brew trust aiiteo/tap
brew install --cask aiiteo/tap/hoardless
```

Homebrew 7 and later ask you to trust a tap before it loads its casks; older versions skip the first line.

Hoardless is paid ($29 one-time) with a 14-day full trial from the same download. The app updates itself through Sparkle, so `brew upgrade` is optional.

- Guides: [disk cleanup on macOS](https://hoardless.app/guides/disk-cleanup-mac), [what is System Data](https://hoardless.app/guides/system-data-mac)
- Free read-only check: [system-data-check.sh](https://hoardless.app/tools/system-data-check.sh)

This tap updates itself daily from the app's update feed.
