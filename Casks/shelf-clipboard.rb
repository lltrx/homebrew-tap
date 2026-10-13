cask "shelf-clipboard" do
  version "1.4.1"
  sha256 "f250e8d484f024c279ede31ecbc258563dbef4f39a1c68c66581de9faa5e7b5b"

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
