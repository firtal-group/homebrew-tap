class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.45.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.45.2/multica-cli-1.45.2-darwin-arm64.tar.gz"
      sha256 "d705f379432bbf944d99b2a47f51b5a9b55050cab4b6a36e6481d438488ef4d7"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.45.2/multica-cli-1.45.2-darwin-amd64.tar.gz"
      sha256 "4f0e70a75f8d99d17557480076ad333548fbe1bb310a6b12579a4c25271cf710"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.45.2/multica-cli-1.45.2-linux-amd64.tar.gz"
      sha256 "ec9684eb141af3d1c7fb1a2ab63ba77c69e2aec7da3fb253676b603cef479eb6"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.45.2/multica-cli-1.45.2-linux-arm64.tar.gz"
      sha256 "cd7135cb4269de512da4af37bd04b4c2dfaf7dd4707610b5ec267aee8a02eec4"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
