class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.66.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.66.1/multica-cli-1.66.1-darwin-arm64.tar.gz"
      sha256 "dfc4cbc25bd0b2b522b9605ffd676c5fab04df50f39c42b8789d66e6362e8891"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.66.1/multica-cli-1.66.1-darwin-amd64.tar.gz"
      sha256 "13804a39670d6b2fa20270e73ca4036b1b6acb303fed1788b236171aa9ead8a0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.66.1/multica-cli-1.66.1-linux-amd64.tar.gz"
      sha256 "43fb4d29deae90d1f9f62e876340f7d69d6b6e30fe248bf4ace687235099a358"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.66.1/multica-cli-1.66.1-linux-arm64.tar.gz"
      sha256 "56add8e1ff691a6405899b7ea8b335fc1ad3be952c10f3a388390bbb88292e86"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
