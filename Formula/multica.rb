class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.92.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.92.0/multica-cli-1.92.0-darwin-arm64.tar.gz"
      sha256 "2614d8309ae48fc20e15f1c93083e486c55d898fdcbc9593e47dc7ec04e7e007"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.92.0/multica-cli-1.92.0-darwin-amd64.tar.gz"
      sha256 "6b1aaa4fd698eca902e2ee81230fcfca7c2dd4185f5658acdada64b422062e99"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.92.0/multica-cli-1.92.0-linux-amd64.tar.gz"
      sha256 "d494d0dbaff4b41e6746a95829516d091889f2454e832e2f5fb501dc3b050af4"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.92.0/multica-cli-1.92.0-linux-arm64.tar.gz"
      sha256 "a8ba1a32c6d904637b28e2f201a02f0ba1ef84c83117048abb204478fea45adc"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
