class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.61.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.61.0/multica-cli-1.61.0-darwin-arm64.tar.gz"
      sha256 "d78ce4db33616cc0f90facfb0b4200cb567ffc8914c218e20b1083436a81f709"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.61.0/multica-cli-1.61.0-darwin-amd64.tar.gz"
      sha256 "2a30f6fac4cc8d0d67131251d64e231336b04ca3c890fa20b1f9c8714dfb884d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.61.0/multica-cli-1.61.0-linux-amd64.tar.gz"
      sha256 "b047d29b2d4ba2072b35cb7ad6732496d7b6d9bef4c9aebe02c28bdd3be298a9"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.61.0/multica-cli-1.61.0-linux-arm64.tar.gz"
      sha256 "e50a8ca894969c43cd267fa949afaa517ea1d4927aef1395a398054d041de366"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
