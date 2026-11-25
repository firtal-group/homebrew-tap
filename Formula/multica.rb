class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.109.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.109.0/multica-cli-1.109.0-darwin-arm64.tar.gz"
      sha256 "7f87d7bf584cdfd02a9353b1bc621830a3da709aeed58160873df6d02f2c974c"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.109.0/multica-cli-1.109.0-darwin-amd64.tar.gz"
      sha256 "da3183ce2e6ab06dd9e8b06278f8c5dbd1a43414dd3896dab92750046f1143de"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.109.0/multica-cli-1.109.0-linux-amd64.tar.gz"
      sha256 "266c8eda1337c3c15607453558d6b1584ccba6e73b51ae43c58b28ba5910bac3"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.109.0/multica-cli-1.109.0-linux-arm64.tar.gz"
      sha256 "f649488dafd547dd74ab4d82662262527ad7898d0f6dea5f1c47e60c7f324fb9"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
