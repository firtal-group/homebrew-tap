class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.25.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.25.0/multica-cli-1.25.0-darwin-arm64.tar.gz"
      sha256 "04821caf3db2417749d6d3a2edacc510fd848a9171de8e76dc313977ea67a843"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.25.0/multica-cli-1.25.0-darwin-amd64.tar.gz"
      sha256 "584a782117a2ced40bc999251b5368e30c6c345325d8dae0f1ebc31fba035c3c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.25.0/multica-cli-1.25.0-linux-amd64.tar.gz"
      sha256 "9647a76c1451aeaf793ee527b6f19bb31d8d295a2c0d0e9e5c8b95c764ac3a53"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.25.0/multica-cli-1.25.0-linux-arm64.tar.gz"
      sha256 "4a798b1cd27368fca56c5bae68423ef8ef77b011aa38c425b2eaa377054fc350"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
