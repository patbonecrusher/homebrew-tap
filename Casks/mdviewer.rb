cask "mdviewer" do
  version "0.2.2"
  sha256 "92e55453a748b6a2405daef4448ccbcba3c3882358299026d5e418f9e04a57eb"

  url "https://github.com/patbonecrusher/mdview/releases/download/v#{version}/MdViewer-macos-swift-arm64.tar.gz"
  name "MdViewer"
  desc "Markdown viewer with diagram support"
  homepage "https://github.com/patbonecrusher/mdview"

  depends_on macos: :ventura
  depends_on arch: :arm64

  app "MdViewer.app"

  zap trash: [
    "~/.config/mdviewer",
  ]
end
