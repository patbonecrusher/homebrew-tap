cask "comic-viewer" do
  version "1.0"
  sha256 "ff6f6cb2dfa2dfaebdb9e3fae2fd17f51b7042ff9c2749ada8a58ac7557c4f78"

  url "https://github.com/patbonecrusher/comic-viewer/releases/download/v#{version}/ComicViewer-#{version}.zip"
  name "Comic Viewer"
  desc "Comic reader with panel-by-panel viewing and a library"
  homepage "https://patbonecrusher.github.io/comic-viewer/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "Comic Viewer.app"

  zap trash: [
    "~/Library/Containers/com.patlaplante.ComicViewer",
    "~/Library/Preferences/com.patlaplante.ComicViewer.plist",
  ]
end
