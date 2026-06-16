class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.9.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.9.0/multica-cli-1.9.0-darwin-arm64.tar.gz"
      sha256 "5a0c44125a26781e5ea68ba66f67fa6690cb2b6416361e0331a8493002047e8d"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.9.0/multica-cli-1.9.0-darwin-amd64.tar.gz"
      sha256 "9fa890ce84f5abbba10a26adea560caefdd7cbc5ccba4d4289ceea9afab1b3a1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.9.0/multica-cli-1.9.0-linux-amd64.tar.gz"
      sha256 "769a3fc3be3b5531b93ac2717c84c28d56de3092eebb688f752859ff15b26e85"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.9.0/multica-cli-1.9.0-linux-arm64.tar.gz"
      sha256 "4aad58572300814c7ebdd53e99e455014f90c9f3bf746c40b3fae90dc56c5674"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
