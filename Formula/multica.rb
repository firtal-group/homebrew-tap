class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.48.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.48.2/multica-cli-1.48.2-darwin-arm64.tar.gz"
      sha256 "646c497da54b8695d257bb978040c119e543f0123ba72bd61161261c0b3ea2ee"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.48.2/multica-cli-1.48.2-darwin-amd64.tar.gz"
      sha256 "1b5adc114afc70adbd8685dea544d2f6901ec1d31d2bc03c079c471414ccf0c0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.48.2/multica-cli-1.48.2-linux-amd64.tar.gz"
      sha256 "10e23553ce959c5a3d5114f09c6f5b4ca7474c4d2d8d6ac13badd737c0eadda1"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.48.2/multica-cli-1.48.2-linux-arm64.tar.gz"
      sha256 "4e94ad09cd23659f14bcc46051316ae1029c4dcd2aee9abfbf58397d84fed157"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
