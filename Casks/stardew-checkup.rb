cask "stardew-checkup" do
  version "1.3"
  sha256 "f0092e7eb75a1c70043760bcd03cd8790ba9c6438c0b69c9dfbcf22915db0b41"

  url "https://github.com/patbonecrusher/stardew-checkup/releases/download/v#{version}/StardewCheckup-#{version}.zip"
  name "Checkup for Stardew Valley"
  desc "Achievement and completion checker for Stardew Valley save files"
  homepage "https://patbonecrusher.github.io/stardew-checkup/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Checkup for Stardew Valley.app"

  zap trash: [
    "~/Library/Preferences/com.patlaplante.StardewCheckup.plist",
  ]
end
