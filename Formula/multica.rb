class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.70.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.70.1/multica-cli-1.70.1-darwin-arm64.tar.gz"
      sha256 "c849766bc563fbd34bd209ebeefeefcdc03c36ca68892d5c07634b428eba532d"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.70.1/multica-cli-1.70.1-darwin-amd64.tar.gz"
      sha256 "990f92c958ff2ff60ac6d395717d4ce0b9c0818585159cce116ec7901bff3787"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.70.1/multica-cli-1.70.1-linux-amd64.tar.gz"
      sha256 "a9afc9313c8598b6d13f7603e32ef6186336b81839e106b21c0d0fad706a8cc0"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.70.1/multica-cli-1.70.1-linux-arm64.tar.gz"
      sha256 "c1acedf8a62e5d69b4731572e2aed2ecfaf76a60429b9c0cee54fac21ef84e27"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
