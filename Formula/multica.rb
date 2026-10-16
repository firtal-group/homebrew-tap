class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.65.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.65.0/multica-cli-1.65.0-darwin-arm64.tar.gz"
      sha256 "7f137f739bcd8022702b698db6b031342e66d05bce37d88a514580d52a62ae11"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.65.0/multica-cli-1.65.0-darwin-amd64.tar.gz"
      sha256 "7331c2414c0d603f4a6a444baa4b1aa151307294ac912ed6a6035029ca0e5538"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.65.0/multica-cli-1.65.0-linux-amd64.tar.gz"
      sha256 "794917c8bb2313a35feb8a0820c5177ba28d8f79606bdb26edaf1e92837978cd"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.65.0/multica-cli-1.65.0-linux-arm64.tar.gz"
      sha256 "4bb84aaae11e3ae1e34e936cc04363f0de1c6f921f3d2d8c7219e48c35543777"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
