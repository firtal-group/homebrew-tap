class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.17.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.17.1/multica-cli-1.17.1-darwin-arm64.tar.gz"
      sha256 "22a0429558ad040dd7190dbba98d08a60c2c7216899dc9889d57fc6f3ef53420"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.17.1/multica-cli-1.17.1-darwin-amd64.tar.gz"
      sha256 "643a0aba913963b2c01f975e347d3c1ed6a3f865e87ee7520ae33bd7ba25140e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.17.1/multica-cli-1.17.1-linux-amd64.tar.gz"
      sha256 "7c6ce2456cf43a85006208d3ad2f0b0b0c53a4f5f504e3477d64af273f2ee782"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.17.1/multica-cli-1.17.1-linux-arm64.tar.gz"
      sha256 "eb6bc1b7cc2070a0e0d8b6fd5928afdf6059a0b9475f72ef5d7c9726e013834b"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
