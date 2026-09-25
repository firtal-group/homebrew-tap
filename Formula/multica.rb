class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.52.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.52.0/multica-cli-1.52.0-darwin-arm64.tar.gz"
      sha256 "1d48237cd562aff5b49322566ab41bb80a18f0ed819a21047587fd244b318aef"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.52.0/multica-cli-1.52.0-darwin-amd64.tar.gz"
      sha256 "58c5107a385c1072513cd77c113247093f11360fecd6474abcf359b58bbea810"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.52.0/multica-cli-1.52.0-linux-amd64.tar.gz"
      sha256 "196bb41b8900f197d377097b78e01abe7c491cd2e40c3e90eb12b70db0bfe039"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.52.0/multica-cli-1.52.0-linux-arm64.tar.gz"
      sha256 "34afdac258926a5ea1e2bf7bbf8feb8c676388fd75cd08a61b8eb7c0b6a91f5a"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
