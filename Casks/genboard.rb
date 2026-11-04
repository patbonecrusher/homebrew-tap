cask "genboard" do
  version "0.1.1"
  sha256 "89c2a7f3d4268de42f0774bdaafe111604b77c56bcf4bdfaacfe122dd4db258d"

  url "https://github.com/patbonecrusher/genboard/releases/download/v#{version}/Genboard-#{version}.zip"
  name "Genboard"
  desc "Genealogy research workbench with sessions, an evidence board and family trees"
  homepage "https://patbonecrusher.github.io/genboard/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Genboard.app"

  zap trash: [
    "~/Library/Application Support/Genboard",
    "~/Library/Caches/com.patlaplante.Genboard",
    "~/Library/HTTPStorages/com.patlaplante.Genboard",
    "~/Library/HTTPStorages/com.patlaplante.Genboard.binarycookies",
    "~/Library/Preferences/com.patlaplante.Genboard.plist",
    "~/Library/Saved Application State/com.patlaplante.Genboard.savedState",
    "~/Library/WebKit/com.patlaplante.Genboard",
  ]
end
