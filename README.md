# lltrx/tap

Homebrew tap for [Shelf](https://github.com/lltrx/shelf-clipboard), a local-only clipboard history
app for macOS.

```sh
brew install --cask lltrx/tap/shelf-clipboard
```

Update with `brew upgrade --cask shelf-clipboard`. Releases are signed with an Apple Developer ID and
notarized. The cask is updated automatically by Shelf's release script.

## Beta

Test builds of the next version, made by GitHub Actions from Shelf's pre-releases:

```sh
brew uninstall --cask shelf-clipboard   # if the stable version is installed
brew install --cask lltrx/tap/shelf-clipboard@beta
```

Betas aren't notarized, so macOS asks you to approve each one once (System Settings → Privacy &
Security → Open Anyway) and to allow Accessibility again. History and pinboards are kept. Go back with
`brew uninstall --cask shelf-clipboard@beta && brew install --cask lltrx/tap/shelf-clipboard`.
