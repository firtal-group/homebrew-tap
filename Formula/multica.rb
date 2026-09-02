class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.34.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.34.0/multica-cli-1.34.0-darwin-arm64.tar.gz"
      sha256 "aedc2f7197e2693fb7390eb803a8ca67a4ad256d2bd6c094de4f054de4c24f3e"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.34.0/multica-cli-1.34.0-darwin-amd64.tar.gz"
      sha256 "38d398bbec1fb5e69e5d959f87925e314f4a416c35c260acb81816e79a5ae139"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.34.0/multica-cli-1.34.0-linux-amd64.tar.gz"
      sha256 "ae0697036896f5fdd2c48ef71deca4a05f9ca6b97853d831e2aafc64712f5adc"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.34.0/multica-cli-1.34.0-linux-arm64.tar.gz"
      sha256 "2ab3c1d74cf9d696e99a187d23c5c38fbd0a6d30d81aab7349cc6a5fbb134e45"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
