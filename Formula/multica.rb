class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.59.5"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.59.5/multica-cli-1.59.5-darwin-arm64.tar.gz"
      sha256 "65c7e7dfbb4c7e3008e230ff267bff238879f1de059a5fe74e804cbd2826ef00"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.59.5/multica-cli-1.59.5-darwin-amd64.tar.gz"
      sha256 "84198f3bdfb5a888f14f531aba26711153faec1899ee414fba64965742b5f0f1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.59.5/multica-cli-1.59.5-linux-amd64.tar.gz"
      sha256 "f61244fdd8ee1535217c0d8b3f0827ddb66f3a9d8975f85055c48fa4a6263eee"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.59.5/multica-cli-1.59.5-linux-arm64.tar.gz"
      sha256 "14bf7a5eb6e0e62757511a07e4e010cf032689e8528c907a3080a6799c5c0f59"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
