cask "shelf-clipboard" do
  version "1.3.1"
  sha256 "f1133d64a066af065bab84ec65f79480dbbce023f1814c418e30075db20d8c29"

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
