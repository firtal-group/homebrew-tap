class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.56.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.56.0/multica-cli-1.56.0-darwin-arm64.tar.gz"
      sha256 "3191ecba4933c46dc8ffb950a7a32c36e47721d84cac9ac9bf0876d2330aed77"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.56.0/multica-cli-1.56.0-darwin-amd64.tar.gz"
      sha256 "82cfd422f07ab8705ce98477deefc28f88d91e4ab0f6eb7be5883b1b72badd54"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.56.0/multica-cli-1.56.0-linux-amd64.tar.gz"
      sha256 "75e9f9d240c732cb4f2f008022c67cda9636fd1980a0a8c4e8e7402c50d79869"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.56.0/multica-cli-1.56.0-linux-arm64.tar.gz"
      sha256 "bfee08496172e19b8897f4f01d698aa424af6a4edae37e975e2001111983a584"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
