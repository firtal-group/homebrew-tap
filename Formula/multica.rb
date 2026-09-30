class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.54.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.54.0/multica-cli-1.54.0-darwin-arm64.tar.gz"
      sha256 "8d4cf6b1096c57d7d7161f845ed2783105a67d2447fab1b98338208294bfcb97"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.54.0/multica-cli-1.54.0-darwin-amd64.tar.gz"
      sha256 "dea96624945e1b06427eaabebffa4ed338c52f71719597726ddd5ae3334c1cb6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.54.0/multica-cli-1.54.0-linux-amd64.tar.gz"
      sha256 "da61301ff944be73f5e04d2422030c0e90ac9f06371804b56e8ec8f256353f20"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.54.0/multica-cli-1.54.0-linux-arm64.tar.gz"
      sha256 "c133798cbc7cd8e58427637a7083c4343e0cba5c86b01507fb752860503da844"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
