class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.19.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.19.0/multica-cli-1.19.0-darwin-arm64.tar.gz"
      sha256 "4e452094cf839f9f95f14269eb86c8fc88149c43cb35b288e7d77c47fb1cf01e"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.19.0/multica-cli-1.19.0-darwin-amd64.tar.gz"
      sha256 "9bdf7488d33db51cf67e76107a59926c4ed5c5b3dc133dcb5951bb58420f0871"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.19.0/multica-cli-1.19.0-linux-amd64.tar.gz"
      sha256 "485db2bce572ef43cafd0d88cc3dd79b96e216bf7937e37027dea5c9e349996f"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.19.0/multica-cli-1.19.0-linux-arm64.tar.gz"
      sha256 "57ed0abfcf5952e972439d0b9b4ca6b2e3ce441ad607aaac432dd356c85f7fa2"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
