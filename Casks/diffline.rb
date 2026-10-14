cask "diffline" do
  version "1.0.3"
  sha256 "21c2df1a978cc1e8331e203ffd4f8ee47bad44024adec1135829fdba3009ed18"

  url "https://github.com/patbonecrusher/diffline/releases/download/v#{version}/Diffline-#{version}.zip"
  name "Diffline"
  desc "Native macOS diff and merge tool with three-way merge for git"
  homepage "https://patbonecrusher.github.io/diffline/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Diffline.app"
  binary "#{appdir}/Diffline.app/Contents/Resources/diffline"

  zap trash: [
    "~/Library/Containers/com.patlaplante.Diffline",
    "~/Library/Preferences/com.patlaplante.Diffline.plist",
  ]
end
