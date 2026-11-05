class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.85.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.85.0/multica-cli-1.85.0-darwin-arm64.tar.gz"
      sha256 "1e5d80565cd3082ffb6ad9530ccbf396dd56d3c67d1b56c40b43ab98f13016c6"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.85.0/multica-cli-1.85.0-darwin-amd64.tar.gz"
      sha256 "3a625793db2e7dd8b057f855700c1a457e29d4df8576dcae2a2abb3e6c26059e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.85.0/multica-cli-1.85.0-linux-amd64.tar.gz"
      sha256 "45710a36fab1560556a0ddbc6811dc33e7b9bcde40e2dfb65093f58dc9d83024"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.85.0/multica-cli-1.85.0-linux-arm64.tar.gz"
      sha256 "6cafca1006069b0ac12ec008b71f28458edeaf38a1b9865af6fa9d8d149172ae"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
