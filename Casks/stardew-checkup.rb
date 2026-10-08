cask "stardew-checkup" do
  version "1.4"
  sha256 "73f97a067a3eea746252a4a194c977603c69741e9afc97f62c052bb768bd4ec4"

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
