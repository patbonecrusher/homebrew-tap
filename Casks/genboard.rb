cask "genboard" do
  version "0.1"
  sha256 "f8ca127b343a6dc3a0994fb9792f985c9765130eb7448b6cad1755b960bebffc"

  url "https://github.com/patbonecrusher/genboard/releases/download/v#{version}/Genboard-#{version}.zip"
  name "Genboard"
  desc "Genealogy research workbench with sessions, an evidence board and family trees"
  homepage "https://patbonecrusher.github.io/genboard/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "Genboard.app"

  zap trash: [
    "~/Library/Application Support/Genboard",
    "~/Library/Caches/com.patlaplante.Genboard",
    "~/Library/HTTPStorages/com.patlaplante.Genboard",
    "~/Library/Preferences/com.patlaplante.Genboard.plist",
    "~/Library/Saved Application State/com.patlaplante.Genboard.savedState",
    "~/Library/WebKit/com.patlaplante.Genboard",
  ]
end
