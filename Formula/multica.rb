class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.49.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.49.0/multica-cli-1.49.0-darwin-arm64.tar.gz"
      sha256 "664eff9bbbde6d34da2963b231b1a4d848835d4d8f791d5f702ce5f5643979b7"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.49.0/multica-cli-1.49.0-darwin-amd64.tar.gz"
      sha256 "61c0a68785151e8e27556158ece45cdf6e0950c99bdf9847efce28d423b22ff6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.49.0/multica-cli-1.49.0-linux-amd64.tar.gz"
      sha256 "1be0d2986bcb074c0f9a16a697c5abba1a9bafee1bed23b71e4e1f0d66dc7698"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.49.0/multica-cli-1.49.0-linux-arm64.tar.gz"
      sha256 "425a7ae42a77f3acd8ce584a4a4bafe5993c2a8cc0ba36ed68e9219db348b06c"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
