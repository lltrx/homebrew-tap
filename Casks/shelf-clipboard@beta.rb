cask "shelf-clipboard@beta" do
  version "1.6.0-beta.1"
  sha256 "5b453a7a5e9da84b9dc4439b469a6b1f1475f67da027d835a87947fc7407f252"

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

  zap trash: [
    "~/Library/Application Support/Shelf",
    "~/Library/Preferences/com.turkifaisal.shelf.plist",
  ]

  caveats <<~EOS
    Beta builds aren't notarized by Apple. The first time you open this version, macOS
    blocks it: click Done, then System Settings → Privacy & Security → Open Anyway.

    macOS also asks for Accessibility again (Shelf needs it to paste). In System Settings →
    Privacy & Security → Accessibility, select Shelf, click −, then paste once and allow it.

    Your history and pinboards are kept. To go back to the stable version:
      brew uninstall --cask shelf-clipboard@beta
      brew install --cask lltrx/tap/shelf-clipboard
  EOS
end
