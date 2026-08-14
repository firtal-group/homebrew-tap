class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.27.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.27.0/multica-cli-1.27.0-darwin-arm64.tar.gz"
      sha256 "0835fdefb76e1e9457e0c55754c07518fae075f705727edb6c61cbd80ca957a4"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.27.0/multica-cli-1.27.0-darwin-amd64.tar.gz"
      sha256 "efa1e1dfe2240164e8c8bd0828e9d15837159232784a4d55d80a901f13a98fc9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.27.0/multica-cli-1.27.0-linux-amd64.tar.gz"
      sha256 "d648f52fe8a2d91a3e9fd7c61e55d47e4dbb7188fb68f48a113229ee72582c86"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.27.0/multica-cli-1.27.0-linux-arm64.tar.gz"
      sha256 "f8ab526c6e648acc9aee9657b7db3e25d767755f9dab4ff1f3859321b2a7c1a8"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
