class HerdrDumb < Formula
  desc "Local-only fork of herdr hardened for locked-down environments"
  homepage "https://patbonecrusher.github.io/herdr-dumb/"
  url "https://github.com/patbonecrusher/herdr-dumb/releases/download/v0.9.3/herdr-dumb-macos-arm64.tar.gz"
  sha256 "0d5d6a4d573ae79c58412fe2b3cfe99cbba3412a9e4f02d6db0beb202818550e"
  license "Apache-2.0"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "herdr-dumb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/herdr-dumb --version")
  end
end
