class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.60.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.60.3/multica-cli-1.60.3-darwin-arm64.tar.gz"
      sha256 "c10cd237167b95dda0ca80ce4c7bb099fe66eca8190cbbfc122e8a394a6c6136"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.60.3/multica-cli-1.60.3-darwin-amd64.tar.gz"
      sha256 "6bed8a7c9a2da576f21567420a5cb0d89f8299d8e1f3de3f765e590348889bb4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.60.3/multica-cli-1.60.3-linux-amd64.tar.gz"
      sha256 "bf8af8493aee73d6a9fae12412b902f23cc08fd88f5dd93583db9e5731105a0c"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.60.3/multica-cli-1.60.3-linux-arm64.tar.gz"
      sha256 "3693a67b717b58b2dc8e477ac8310efe005f771c34e9df18ba72345ca11d7e4e"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
