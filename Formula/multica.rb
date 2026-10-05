class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.58.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.58.4/multica-cli-1.58.4-darwin-arm64.tar.gz"
      sha256 "66b10b07c98bc705ec01e3561f20712fb5b0a1d1bc781b637a81e302e9edef23"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.58.4/multica-cli-1.58.4-darwin-amd64.tar.gz"
      sha256 "14de9004a7e50683b689e2b0a500a564b338cefb54cbeb70a00ef34d29c08382"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.58.4/multica-cli-1.58.4-linux-amd64.tar.gz"
      sha256 "89643ec7ead40f81bba370d2cd8d410df36ddd16f668b4c2ed6e9d8cf1a9417e"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.58.4/multica-cli-1.58.4-linux-arm64.tar.gz"
      sha256 "8f460024de55f0d3bec8a1742e33daa45f7c0304ae77385cc747b511e21ab89e"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
