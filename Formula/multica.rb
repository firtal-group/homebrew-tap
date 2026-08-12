class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.26.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.26.0/multica-cli-1.26.0-darwin-arm64.tar.gz"
      sha256 "9af2ec07cc11b65edbd6b532eb1dff9e3f3279a7c47b121bb5cfcf9713b187eb"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.26.0/multica-cli-1.26.0-darwin-amd64.tar.gz"
      sha256 "90dadbf818bead6d36ad747b519f1d80ae2a819456f4d126427c918d3f9c24f2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.26.0/multica-cli-1.26.0-linux-amd64.tar.gz"
      sha256 "575b13992e781d83ecc3e29f8731da3adfea1163c0af06ddce454a389f27e398"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.26.0/multica-cli-1.26.0-linux-arm64.tar.gz"
      sha256 "0c412e6f92d436d4e8cf010cb56e344ef021c875d49821a35d661078a5e8d2c3"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
