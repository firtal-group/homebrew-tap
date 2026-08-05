class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.24.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.24.1/multica-cli-1.24.1-darwin-arm64.tar.gz"
      sha256 "c30f7a2878f10378e53008bd4c92654fc1340225f36e9944bcc90b60308b9b1e"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.24.1/multica-cli-1.24.1-darwin-amd64.tar.gz"
      sha256 "e75403ca259c25b58f853b3fdbbc563b42d12d3d83287ad64080a58e16626452"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.24.1/multica-cli-1.24.1-linux-amd64.tar.gz"
      sha256 "0da91bc5a6953a350ef3213eca992e1fa8d58191fe52ac7d28d2776a136194a9"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.24.1/multica-cli-1.24.1-linux-arm64.tar.gz"
      sha256 "80659cd5983db25a8d4bfe9e2ae77f2d32711459c3c65a41b4317aca3858b510"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
