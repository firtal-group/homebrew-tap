class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.20.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.20.0/multica-cli-1.20.0-darwin-arm64.tar.gz"
      sha256 "2864c471575016ff794b04fd1ada15da073f4a5c89b423c10b1dfca334378fc8"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.20.0/multica-cli-1.20.0-darwin-amd64.tar.gz"
      sha256 "be9fe570d1fc1a1ab3a3a41e6bf87247fb9f559b520e15f88b591485f9f67a91"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.20.0/multica-cli-1.20.0-linux-amd64.tar.gz"
      sha256 "fd2f7d2a016723720f37979c5d2096025824ccc396aee43d38d3e455fbc01e5a"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.20.0/multica-cli-1.20.0-linux-arm64.tar.gz"
      sha256 "72e416952beff540bb0451d800f81d2292853cdbe36bba7a0a65f2ba2dca497e"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
