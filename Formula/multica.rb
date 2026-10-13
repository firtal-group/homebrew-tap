class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.64.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.64.0/multica-cli-1.64.0-darwin-arm64.tar.gz"
      sha256 "0c39995d355ce5c289333dc22cb4c75a9685b808e59c48425d0412558e06849d"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.64.0/multica-cli-1.64.0-darwin-amd64.tar.gz"
      sha256 "d092a1f13a81bf7de2f94f188b244b52663479420fbd327017e052fc7c2163db"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.64.0/multica-cli-1.64.0-linux-amd64.tar.gz"
      sha256 "82580b1fd84be3c75d35d674d4085660e6b17b30e3e62a8c974efb5094d63f09"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.64.0/multica-cli-1.64.0-linux-arm64.tar.gz"
      sha256 "9a7fdb1421c059e04c49200ab911eb156457319dd8c8e0cbcc085a172c1141ff"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
