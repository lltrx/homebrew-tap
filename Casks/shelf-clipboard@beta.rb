cask "shelf-clipboard@beta" do
  version "1.6.0-beta.5"
  sha256 "376a629096521f2c28a4d03b1220e5cd40f7aa1b15a61b3c2b2e07041e686402"

  url "https://github.com/lltrx/shelf-clipboard/releases/download/v#{version}/Shelf-#{version}.zip"
  name "Shelf Beta"
  desc "Local-only clipboard history manager (test builds)"
  homepage "https://github.com/lltrx/shelf-clipboard"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+-beta\.\d+)$/i)
    strategy :github_releases
  end

  conflicts_with cask: "shelf-clipboard"
  depends_on macos: :sonoma

  app "Shelf.app"

  # Quit the running Shelf first; otherwise the old version keeps running after an upgrade.
  uninstall quit: "com.turkifaisal.shelf"

  zap trash: [
    "~/Library/Application Support/Shelf",
    "~/Library/Preferences/com.turkifaisal.shelf.plist",
  ]

  caveats <<~EOS
    Beta builds aren't notarized by Apple, so macOS blocks each new beta the first time it
    opens. Click Done (not Move to Trash), then System Settings → Privacy & Security →
    Open Anyway. Or, since you trust this build:
      xattr -dr com.apple.quarantine /Applications/Shelf.app && open /Applications/Shelf.app

    macOS may ask for Accessibility again (Shelf needs it to paste). In System Settings →
    Privacy & Security → Accessibility, select Shelf, click −, then paste once and allow it.

    The Shelf menu (⋯ in the shelf) shows the version at the bottom. History and pinboards
    are kept. To go back to the stable version:
      brew uninstall --cask shelf-clipboard@beta
      brew install --cask lltrx/tap/shelf-clipboard
  EOS
end
