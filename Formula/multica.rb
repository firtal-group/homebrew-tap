class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.24.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.24.2/multica-cli-1.24.2-darwin-arm64.tar.gz"
      sha256 "2205848c8f761861145b103141e12dbdcf8de60ece8cd8e3b5f2ef4a929ae57a"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.24.2/multica-cli-1.24.2-darwin-amd64.tar.gz"
      sha256 "714cef179cb14e054482c1f989efb38e2a77db2cb58791cb515ce7ef700b7f20"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.24.2/multica-cli-1.24.2-linux-amd64.tar.gz"
      sha256 "5266ed9baddba517b1efb1afe3c67eb385c10e14c13680fa5c1e9ac2dfcc3713"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.24.2/multica-cli-1.24.2-linux-arm64.tar.gz"
      sha256 "7b6ee0f544d565d431cc08bd8f9a5dddf0126d4305184705959ad54d39fb27e4"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
