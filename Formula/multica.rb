class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.60.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.60.1/multica-cli-1.60.1-darwin-arm64.tar.gz"
      sha256 "715a8c635c26ff48c150c222803f0dacac69c09c4741714e02d21b7ec61f0180"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.60.1/multica-cli-1.60.1-darwin-amd64.tar.gz"
      sha256 "e74b198b3223708c6dad48cc152e0962d6cc7378cfd67ca9a9ed0177227ae3b7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.60.1/multica-cli-1.60.1-linux-amd64.tar.gz"
      sha256 "435b343fec09e4a9f8bb1e59143448a3ee3a0ec2b9af18b4fae96578950124d6"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.60.1/multica-cli-1.60.1-linux-arm64.tar.gz"
      sha256 "4ddaa176ad235151c4547938c78ef3b2af382069fb8dbad6dadd96f44afe3472"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
