cask "comic-viewer" do
  version "1.1"
  sha256 "9f21c1b5a2f565db0be10b36465f121741ce793bd26484c77551e4ddf370fb1c"

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
