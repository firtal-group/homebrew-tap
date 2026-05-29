class Multica < Formula
  desc "Multica CLI — local agent runtime with agent-trace upload (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "0.3.0-firtal-trace.8226b77ac"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v0.3.0-firtal-trace.8226b77ac/multica-cli-0.3.0-firtal-trace.8226b77ac-darwin-arm64.tar.gz"
      sha256 "83806cbbb05eb2b66ec05467f208fae1bb8daa02163820db102a897328264649"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v0.3.0-firtal-trace.8226b77ac/multica-cli-0.3.0-firtal-trace.8226b77ac-linux-amd64.tar.gz"
      sha256 "22c0da34d2d135cc565c68f3ab82e30ca26badda18bfa928b184f77c1a1459a0"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
