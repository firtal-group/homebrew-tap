class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.53.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.53.0/multica-cli-1.53.0-darwin-arm64.tar.gz"
      sha256 "68a0cb45c3fe270d84b4d3bcae9235a21eaa747f3c1644f5672af07a4592cf20"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.53.0/multica-cli-1.53.0-darwin-amd64.tar.gz"
      sha256 "3f63d5f79e66206668d614f7f3fe0edde487f24bc24a9db4d6308d0c15ab8350"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.53.0/multica-cli-1.53.0-linux-amd64.tar.gz"
      sha256 "5cf05843211eca470bde611a43cda2c9c97252df7ad30cff508315e0e8ad0011"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.53.0/multica-cli-1.53.0-linux-arm64.tar.gz"
      sha256 "32dc3fa01191a0d9a168179b3d2857db79ec77b83c9627a987e11fd2b341257d"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
