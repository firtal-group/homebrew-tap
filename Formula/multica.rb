class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.37.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.37.0/multica-cli-1.37.0-darwin-arm64.tar.gz"
      sha256 "c67ae3a7243091a9caad5fb0ced9e8d77c9bf9c4ab0f4c9806fc60bc297a8ec8"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.37.0/multica-cli-1.37.0-darwin-amd64.tar.gz"
      sha256 "fd8b6c0451f07e1b6ec565a8a415704b5fd48c3392b5f271ba007a6660ada366"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.37.0/multica-cli-1.37.0-linux-amd64.tar.gz"
      sha256 "08fdbdb34f5e544a94c8c42a9321bc4d21b9ddaba0b8c7bb2ce10ef4e13abf7f"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.37.0/multica-cli-1.37.0-linux-arm64.tar.gz"
      sha256 "ab6aabae3473db0a8f0ab5ecc573af8999d291b1672af271be64d68bb60ab600"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
