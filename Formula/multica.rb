class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.79.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.79.0/multica-cli-1.79.0-darwin-arm64.tar.gz"
      sha256 "c024ef7dcf7534e5729fc7df1da78d0381547a918fd5f8f0e99be6a001cca6bb"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.79.0/multica-cli-1.79.0-darwin-amd64.tar.gz"
      sha256 "1a91c2bc6a1ad1fee2f8885c70e5d645533fe492b006fc4a643a26bc2c7173fd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.79.0/multica-cli-1.79.0-linux-amd64.tar.gz"
      sha256 "ee9b74f1c20cdcb072be9679902a09632422e6df063873b59720d9acf831cdf2"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.79.0/multica-cli-1.79.0-linux-arm64.tar.gz"
      sha256 "0aa663e4601ac01d6253d904ebf367bed254f06b760a146b7693632d2f6ce5f9"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
