cask "diffline" do
  version "1.0.1"
  sha256 "4aab2ff06a7a6f3a7335c28c4d5ab725efd06c894b05ae2e4fd28378f98e6c40"

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
