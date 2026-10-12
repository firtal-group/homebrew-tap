class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.62.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.62.1/multica-cli-1.62.1-darwin-arm64.tar.gz"
      sha256 "507f06833bbc05fb9a97f35de83e6c1ecfcc8f359d9de86b8f6019db179d31c0"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.62.1/multica-cli-1.62.1-darwin-amd64.tar.gz"
      sha256 "8b5a613c94c5092486c7be222369a7e45cc87309c52cfe3f39ada806ea598c91"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.62.1/multica-cli-1.62.1-linux-amd64.tar.gz"
      sha256 "6ebbae9315e91bddb554e0a4a661958e476e9b5d2b1d12713feb201ee4dc1bfe"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.62.1/multica-cli-1.62.1-linux-arm64.tar.gz"
      sha256 "6e3b1a61dab71c5a2ab7e9dde3ecee2fc38f72b975c7cd51f241c0db6fd0d8ac"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
