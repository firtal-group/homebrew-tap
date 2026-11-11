class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.91.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.91.0/multica-cli-1.91.0-darwin-arm64.tar.gz"
      sha256 "4756a71795376b4c0b0f305cf2e9eaf7dd47caf4287a82efc176d2494217d8f8"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.91.0/multica-cli-1.91.0-darwin-amd64.tar.gz"
      sha256 "55e3bd1b0b87bf5e9d07903f426025fe5c98e449e05f3ee5000ac2e01caf6643"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.91.0/multica-cli-1.91.0-linux-amd64.tar.gz"
      sha256 "e4a7031a2391184b83f7b3d950bcf516c8e84e1bc99eac93aafcbcbf12f9a710"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.91.0/multica-cli-1.91.0-linux-arm64.tar.gz"
      sha256 "af4fb0c0afef7a984c934458678098041323b55003de19662dd17adf794d5210"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
