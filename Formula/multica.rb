class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.35.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.35.0/multica-cli-1.35.0-darwin-arm64.tar.gz"
      sha256 "d1a62e05d1eb692da55dc1c4301f70f1f025a47fb11f397ba02346869662fd3b"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.35.0/multica-cli-1.35.0-darwin-amd64.tar.gz"
      sha256 "bbda461d1874660cbccf705a4f4861d0c31c68439cb7cff9524ad4ad85272484"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.35.0/multica-cli-1.35.0-linux-amd64.tar.gz"
      sha256 "dfe7b08cb69971363fb1e261c56925c2c5b1ced77a9a8b9d7755229c9d70c311"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.35.0/multica-cli-1.35.0-linux-arm64.tar.gz"
      sha256 "6c6a6305bfebac8eea59152483b4b3fce3f1142e6c6ff646421f984df23d22af"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
