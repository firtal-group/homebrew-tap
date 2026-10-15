class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.64.5"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.64.5/multica-cli-1.64.5-darwin-arm64.tar.gz"
      sha256 "ca89cef7d9eee1f29d182e2fff570a4924d7ec4b461aed828be4ecca00fd8619"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.64.5/multica-cli-1.64.5-darwin-amd64.tar.gz"
      sha256 "4a21892152a5cfb966f95572a8d4f518e7417b6f011f0b344ab81ead5bd39520"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.64.5/multica-cli-1.64.5-linux-amd64.tar.gz"
      sha256 "98fe33dc98643e7d6dbd41e9a00de1f5273299aa2b9c758de5ff582323ea9fba"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.64.5/multica-cli-1.64.5-linux-arm64.tar.gz"
      sha256 "4fe3376bfe5f6515bae25149d8f29dd2197c9de4ddebc0a5024336a40a65a69a"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
