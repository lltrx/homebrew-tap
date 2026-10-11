cask "shelf-clipboard" do
  version "1.4.0"
  sha256 "34a9b7154e4cde3945994224a2c471bb0ff53ddec3be054dfab0ec5b6f4d836a"

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
