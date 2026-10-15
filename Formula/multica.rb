class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.64.6"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.64.6/multica-cli-1.64.6-darwin-arm64.tar.gz"
      sha256 "6f0f1a4c9904395a1cd9dfe3b83fec1b2cafce490391ef8f269eebeeb309dda1"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.64.6/multica-cli-1.64.6-darwin-amd64.tar.gz"
      sha256 "80a50f31834c1dbc8c613abeb0f12c8440ba5d63d53bffad7e2519340722c064"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.64.6/multica-cli-1.64.6-linux-amd64.tar.gz"
      sha256 "164455e117b6d28a9553adbfe553d886f01a2496ed9bfea5865e563ce51fb28c"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.64.6/multica-cli-1.64.6-linux-arm64.tar.gz"
      sha256 "7fcb8846f96315ec31da95af5e94b36170fa47e771106962bfc96f67c5b3366b"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
