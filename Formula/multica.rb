class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.29.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.29.1/multica-cli-1.29.1-darwin-arm64.tar.gz"
      sha256 "84f7ebbf0d61b5a973f9716ebef883578940d25224279deeaea3d563084e44ad"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.29.1/multica-cli-1.29.1-darwin-amd64.tar.gz"
      sha256 "669cd940c403a8f664dd72a2d380ac649cae51560bc95eb3965df5e5f9418f2f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.29.1/multica-cli-1.29.1-linux-amd64.tar.gz"
      sha256 "3b0841f3142f39d656ead43d6d342e5b2e38f6a4322f3749638a4b6ea081faad"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.29.1/multica-cli-1.29.1-linux-arm64.tar.gz"
      sha256 "1ca4927abf2ed45524767ae4a71f2acf7b7261c8cc8e473a627bdced4f550e48"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
