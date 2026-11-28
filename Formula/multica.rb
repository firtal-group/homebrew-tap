class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.112.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.112.0/multica-cli-1.112.0-darwin-arm64.tar.gz"
      sha256 "ad538a8419e9a449477d0616167c9998e32d19fedea4d3361eb632dce28161b3"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.112.0/multica-cli-1.112.0-darwin-amd64.tar.gz"
      sha256 "9a69fa1713ed216b1b2de68d8debb01a08593b41f606c837cd38fb3adee31a7c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.112.0/multica-cli-1.112.0-linux-amd64.tar.gz"
      sha256 "7b0a1cd215f75ac75ad7c35591679aca7897ed15a0b3719477493a28a023374b"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.112.0/multica-cli-1.112.0-linux-arm64.tar.gz"
      sha256 "5d105e64063a5de15111a7e4d88b6d3f5f1811ebcb2f47e44375cfdb034b60b2"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
