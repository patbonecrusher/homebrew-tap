cask "stardew-checkup" do
  version "1.0"
  sha256 "77fde330affd8a34f2c4072cec681ac0b987bfef578329165b0a79f4fb09504a"

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
