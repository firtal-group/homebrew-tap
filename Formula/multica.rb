class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.36.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.36.0/multica-cli-1.36.0-darwin-arm64.tar.gz"
      sha256 "8bf1bfb64d998c2d8078dbd5b32c3aa752c5ae82acc08e33d94ecf786b42f124"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.36.0/multica-cli-1.36.0-darwin-amd64.tar.gz"
      sha256 "c79f7627ff733cbbf7bb97bb176a010246dd67f3b17420d377d2bc82046d7251"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.36.0/multica-cli-1.36.0-linux-amd64.tar.gz"
      sha256 "9c8a71c81d3be22f8d09480460b44e8de2b555bdcaed0a5cf7fdac7099be5257"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.36.0/multica-cli-1.36.0-linux-arm64.tar.gz"
      sha256 "a5509e5c41e04ab4c596b6bcb1f27725ff5d030e8fa283e6737b116d2155463a"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
