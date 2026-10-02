class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.57.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.57.1/multica-cli-1.57.1-darwin-arm64.tar.gz"
      sha256 "0fc9a76fd2f8460f576e7e224e3484dbda9fcc70cfc5dd64502e71bdc5d07976"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.57.1/multica-cli-1.57.1-darwin-amd64.tar.gz"
      sha256 "f044213dd54c77c120c1333f30c2712c82d2c1a27d3c533a21325010cc15b7d4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.57.1/multica-cli-1.57.1-linux-amd64.tar.gz"
      sha256 "36b0ac7163cb4a5dbdadcdeb32fee2d19ba3886086039665311c6f01f078cb39"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.57.1/multica-cli-1.57.1-linux-arm64.tar.gz"
      sha256 "2d4828ae023435f999c0c215d1adf88fade8515ce5b0e13234c82937f6b184a7"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
