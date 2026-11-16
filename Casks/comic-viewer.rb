cask "comic-viewer" do
  version "1.2"
  sha256 "12a29685783d4050607a929549ab5a0cd01528f79cc21ebf0c93371a71844f7e"

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
