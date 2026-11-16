cask "comic-viewer" do
  version "1.3"
  sha256 "e4fb7421c4883c47ae8b5fd7dd57d324149dba8afb62a1b031231f289c8dd7d4"

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
