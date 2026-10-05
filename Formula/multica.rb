class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.58.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.58.3/multica-cli-1.58.3-darwin-arm64.tar.gz"
      sha256 "fee1b5722615185cf5b4a9f59a565641e30984121dc47ac4d189ce243ae3a143"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.58.3/multica-cli-1.58.3-darwin-amd64.tar.gz"
      sha256 "bee7f87272c7edf23cbd8cc35853fd339877a4a8af5d4aefa82f4c6b3e27426b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.58.3/multica-cli-1.58.3-linux-amd64.tar.gz"
      sha256 "358419adab7fec6a79556482e866fa2c842ea3445653595063c27d17af5b1cac"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.58.3/multica-cli-1.58.3-linux-arm64.tar.gz"
      sha256 "d502e371dabaa5397100473eff2fe242bd0475a389e98037197a253c30d3b31f"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
