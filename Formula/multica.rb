class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.60.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.60.0/multica-cli-1.60.0-darwin-arm64.tar.gz"
      sha256 "ede531dab83866ff094f91aa3f2054c74cf628c48eca29ee99282acb1bee7d82"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.60.0/multica-cli-1.60.0-darwin-amd64.tar.gz"
      sha256 "6b539a713377c767f66607298535fbf0ef7effae21dbd71b5b249d37677670b3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.60.0/multica-cli-1.60.0-linux-amd64.tar.gz"
      sha256 "c5c0faf3febc75dbb5f356e8b8422411ad93a3372d3018c1a105483946194d53"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.60.0/multica-cli-1.60.0-linux-arm64.tar.gz"
      sha256 "1ee25b7bd33c977688144847b55198b7369db67e2d474c3671902ee2f01db33a"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
