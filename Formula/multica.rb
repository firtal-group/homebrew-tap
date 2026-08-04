class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.24.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.24.0/multica-cli-1.24.0-darwin-arm64.tar.gz"
      sha256 "d5deec5699aaefd7798c00557eff886a267b1f8d376a0c755e7df0026d275f06"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.24.0/multica-cli-1.24.0-darwin-amd64.tar.gz"
      sha256 "215808f5be6a42d67a2d8acb57a6f02a5d0dff3baab1b49572f0c84e9047b20b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.24.0/multica-cli-1.24.0-linux-amd64.tar.gz"
      sha256 "1a21701445fb181b6842f954065c1ef426eaecb876781cf50fe3b62613fdd9c1"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.24.0/multica-cli-1.24.0-linux-arm64.tar.gz"
      sha256 "728ef13f0edd31a745d01452ba7368845b8013f9a6c235768608031afafbc017"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
