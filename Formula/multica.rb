class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.86.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.86.0/multica-cli-1.86.0-darwin-arm64.tar.gz"
      sha256 "3892e32925fb59e2e9b28d347218e90c027958ca24aa6a02308362ffb58d4a05"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.86.0/multica-cli-1.86.0-darwin-amd64.tar.gz"
      sha256 "33c1db3fedb5edcf7f95078c86fcd4a8259f9abf6e98496095251243c3bb7b30"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.86.0/multica-cli-1.86.0-linux-amd64.tar.gz"
      sha256 "4514b38effb9b147cbb7a548a56b0bb1f4a7cad8323b2106903e2d6c07db10e4"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.86.0/multica-cli-1.86.0-linux-arm64.tar.gz"
      sha256 "c8daa86674279412c1a55594efac8a8e9cbd86f865da334b6da1d0a9d3672290"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
