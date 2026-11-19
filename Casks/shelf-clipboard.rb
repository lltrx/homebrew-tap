cask "shelf-clipboard" do
  version "2.0.0"
  sha256 "dc1e3e6ee4ff902766ececb8ad52ee4f87556ec63fd9eb58916fe2f245e03ab8"

  url "https://github.com/lltrx/shelf-clipboard/releases/download/v#{version}/Shelf-#{version}.zip"
  name "Shelf"
  desc "Local-only clipboard history manager"
  homepage "https://github.com/lltrx/shelf-clipboard"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Shelf.app"

  zap trash: [
    "~/Library/Application Support/Shelf",
    "~/Library/Preferences/com.turkifaisal.shelf.plist",
  ]
end
