cask "stardew-checkup" do
  version "1.2"
  sha256 "ce550e44e9803e8051d5cb5ee8caebaa321f3f4b8144acb7d37ac3eb73fcc5dc"

  url "https://github.com/patbonecrusher/stardew-checkup/releases/download/v#{version}/StardewCheckup-#{version}.zip"
  name "Checkup for Stardew Valley"
  desc "Achievement and completion checker for Stardew Valley save files"
  homepage "https://github.com/patbonecrusher/stardew-checkup"

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
