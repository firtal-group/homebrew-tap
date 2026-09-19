class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.48.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.48.4/multica-cli-1.48.4-darwin-arm64.tar.gz"
      sha256 "c2d8389cfb307fd28f720b1a5c396a079bfdf200a0dbced5825f5c7d003abce2"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.48.4/multica-cli-1.48.4-darwin-amd64.tar.gz"
      sha256 "2b4cfc89394b56f507f8abe90ce8b74c8e943e458c54d975d176a9297268abb1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.48.4/multica-cli-1.48.4-linux-amd64.tar.gz"
      sha256 "2234fe26408a90d3ccc61d257b874a3cdadfeb890b05a7c8188aa7da6bf9137d"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.48.4/multica-cli-1.48.4-linux-arm64.tar.gz"
      sha256 "8e3a8c96410fde0fd149eaebbb82a27c5b6a702fea352d3c077b77367a0abad0"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
