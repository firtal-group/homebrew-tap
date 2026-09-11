class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.43.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.43.0/multica-cli-1.43.0-darwin-arm64.tar.gz"
      sha256 "85fd849371fd7313e8579cb59d9656746ca4a4d908b5a0ab1fe574a0a9262f4b"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.43.0/multica-cli-1.43.0-darwin-amd64.tar.gz"
      sha256 "b97b5bb3dedb5fdde7e7e5b22fccf51cb8bfa402a0b247f4e27914405e39b4a4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.43.0/multica-cli-1.43.0-linux-amd64.tar.gz"
      sha256 "41a2f0fbbb2924f43cebc691cb7645b9ef1b18686c03bf0e1ce332ded8bd8e23"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.43.0/multica-cli-1.43.0-linux-arm64.tar.gz"
      sha256 "048ec53ab40f5080ae96fe378f70884f13b007ccca4bd15c573aaea043786019"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
