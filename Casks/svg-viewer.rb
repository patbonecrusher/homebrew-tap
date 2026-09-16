cask "svg-viewer" do
  version "1.0"
  sha256 "930ddc8e3abad77669f6634e8888717116731582984dde5f8ce779fe7eed9261"

  url "https://github.com/patbonecrusher/svg-viewer/releases/download/v#{version}/SVGViewer-#{version}.zip"
  name "SVG Viewer"
  desc "Native macOS SVG viewer with browser-accurate rendering"
  homepage "https://patbonecrusher.github.io/svg-viewer/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "SVG Viewer.app"

  zap trash: [
    "~/Library/Containers/com.patlaplante.SVGViewer",
    "~/Library/Preferences/com.patlaplante.SVGViewer.plist",
  ]
end
