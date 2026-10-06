class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.59.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.59.0/multica-cli-1.59.0-darwin-arm64.tar.gz"
      sha256 "94f43c8bff870950ce9251f73a70acc8c867eb4aa27c9a6f4f474bfec0015217"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.59.0/multica-cli-1.59.0-darwin-amd64.tar.gz"
      sha256 "f0c39432bf029ca8011fea2af94e37ccab04da2d217738df19d7914cbbba5514"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.59.0/multica-cli-1.59.0-linux-amd64.tar.gz"
      sha256 "7eaded2b4477af058f16618a3963f6082cf7fdabb4375dbfa6ce3c72116beafd"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.59.0/multica-cli-1.59.0-linux-arm64.tar.gz"
      sha256 "5d95f07fe69cc9f100b829a8793454fa59a2254fac1a874a627adad94308a1bb"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
