class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.58.6"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.58.6/multica-cli-1.58.6-darwin-arm64.tar.gz"
      sha256 "ba6b243dad53c7a49c170d8f103f01820f9b452b527dc5021af15e7cbd9a110d"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.58.6/multica-cli-1.58.6-darwin-amd64.tar.gz"
      sha256 "6bc8dcf04b303d9f29cc596ab46c15b309788001e69e61fb04570e45b65e78fd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.58.6/multica-cli-1.58.6-linux-amd64.tar.gz"
      sha256 "967c96e0701eb85f9029ec4b27726475a5d3d76a0bdb4b4994d3941e9de631e3"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.58.6/multica-cli-1.58.6-linux-arm64.tar.gz"
      sha256 "38ccabd6d0a3f56672fce80ad784ec4152e85244bf1834c6785d471f43b06178"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
