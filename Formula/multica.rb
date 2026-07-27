class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.20.7"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.20.7/multica-cli-1.20.7-darwin-arm64.tar.gz"
      sha256 "82e2b00824c2c0c3b7430012c7ab856c338e81b6a3f288d6d90f33a97286e794"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.20.7/multica-cli-1.20.7-darwin-amd64.tar.gz"
      sha256 "98e40dd6d2d2e6492c76a00b4ebf06ebf2f3fdf2629284f9f5131eb13c62142b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.20.7/multica-cli-1.20.7-linux-amd64.tar.gz"
      sha256 "148c018db9f16ba72fe5d5cd13206463da4ffdafd12fa516490e320ee1eeacc9"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.20.7/multica-cli-1.20.7-linux-arm64.tar.gz"
      sha256 "985933bfa7830341173ee078f00d935455f49bd5d5b7a0e9ecd955683aec961a"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
