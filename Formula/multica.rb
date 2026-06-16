class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.8.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.8.0/multica-cli-1.8.0-darwin-arm64.tar.gz"
      sha256 "afcbd875bd33394d9101e765ac5d5a07ea5bf13f0de1c044e4cc83fe73532f8d"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.8.0/multica-cli-1.8.0-darwin-amd64.tar.gz"
      sha256 "a555173ff57225c7412b76a6ed0f9f65bb3d646ece893960c02a106d355a6fa2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.8.0/multica-cli-1.8.0-linux-amd64.tar.gz"
      sha256 "9f4d9f9861fba699bd84dcbb1db9bb24c78a5b8fd773e4c2926d9bb51b05247a"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.8.0/multica-cli-1.8.0-linux-arm64.tar.gz"
      sha256 "1e9ee20e01693e2c49da00c04592ee3b85cf72602cae0138adb02e5249cf2dca"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
