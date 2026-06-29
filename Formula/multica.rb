class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.11.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.11.2/multica-cli-1.11.2-darwin-arm64.tar.gz"
      sha256 "0d9757fdaabfb1187a69c01be600fd6749a8f15395191138fb95e74966fb5137"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.11.2/multica-cli-1.11.2-darwin-amd64.tar.gz"
      sha256 "719f07562dff43d2c046471a40ab31bf01897e232db9245a88cf2d41059a2970"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.11.2/multica-cli-1.11.2-linux-amd64.tar.gz"
      sha256 "01ab8cae1b6b91ae83f212c7f8e36abc1a29f4baaf8addfde0987d39a1a10448"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.11.2/multica-cli-1.11.2-linux-arm64.tar.gz"
      sha256 "afbdd511759b5337943c4970e1926f86a32588458bef82048f83ae3ec0d76bab"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
