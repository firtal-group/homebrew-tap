class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.31.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.31.1/multica-cli-1.31.1-darwin-arm64.tar.gz"
      sha256 "d4d9f87417340f21c8880dc94cea7a76dd0cef45e9164fb67b8a7b6221b49c29"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.31.1/multica-cli-1.31.1-darwin-amd64.tar.gz"
      sha256 "1df003590a3da526b95fed39a9b35ec1251ff5e034896fe02797cd07843cdf11"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.31.1/multica-cli-1.31.1-linux-amd64.tar.gz"
      sha256 "8e9485c3889ca660db648bee6b749a985675993a7d96826fd758fb5f29eef737"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.31.1/multica-cli-1.31.1-linux-arm64.tar.gz"
      sha256 "61aab346c0df5a9538c8f45a4bfc46ff816aebb9bc923dd4a227458fbccebf07"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
