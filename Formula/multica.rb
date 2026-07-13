class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.14.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.14.2/multica-cli-1.14.2-darwin-arm64.tar.gz"
      sha256 "0c08016a21dbf86c7b41948f47e509b211b8bf420be7e4f55dec00743b6d494b"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.14.2/multica-cli-1.14.2-darwin-amd64.tar.gz"
      sha256 "fc4bc30c1f8bb3b492116e7c5347a4bf5b0e578b8cc48643cff51f3a6b470cb7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.14.2/multica-cli-1.14.2-linux-amd64.tar.gz"
      sha256 "37f340638e85d03aa46a859feb7293079e6e8724adbb23f0b3bb91ac813127de"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.14.2/multica-cli-1.14.2-linux-arm64.tar.gz"
      sha256 "17864cc7aee5d94aa74c663470135b32c60156b92a24c21a4afe7aa5957750c4"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
