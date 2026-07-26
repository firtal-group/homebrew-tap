class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.20.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.20.4/multica-cli-1.20.4-darwin-arm64.tar.gz"
      sha256 "1109d6d90906208abf3bfab22b9d52a0b016c6ea42f72eee8e4d6d7f0dcad1f0"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.20.4/multica-cli-1.20.4-darwin-amd64.tar.gz"
      sha256 "7ae9395fa02a7c94a4ca72ab35be163f4b1da65bcb972e3d201d12a964fefa74"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.20.4/multica-cli-1.20.4-linux-amd64.tar.gz"
      sha256 "acd9a306dc369272ae7b2e28345127b1d47b013b4d35d2db538374d77f619c71"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.20.4/multica-cli-1.20.4-linux-arm64.tar.gz"
      sha256 "d80261032f9bd435143a84b296b83aa7e7371cdb049e4c13c88b355f3a7a7895"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
