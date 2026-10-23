cask "diffline" do
  version "1.0.4"
  sha256 "fc3069a34142d79ee01ab6a0fc0e2608b6b17569f20dc654b68b20de81e8e31b"

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
