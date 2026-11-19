cask "shelf-clipboard" do
  version "2.0.1"
  sha256 "6f73e1cb519832d57b4963f700dee5cd8ef369ef9a6a033936cb31cf58fa0658"

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
