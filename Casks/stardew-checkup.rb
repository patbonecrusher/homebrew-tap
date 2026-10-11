cask "stardew-checkup" do
  version "1.5"
  sha256 "5c0b59cee3c7d71951564bc8bfc7491a56e49b662eb6012173186fd16a387437"

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
