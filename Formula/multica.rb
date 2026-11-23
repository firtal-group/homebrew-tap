class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.103.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.103.0/multica-cli-1.103.0-darwin-arm64.tar.gz"
      sha256 "693982ab092faaeb553c98a4abce2379ac651ab3db67e9a1a9d1f49620d498a3"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.103.0/multica-cli-1.103.0-darwin-amd64.tar.gz"
      sha256 "6ec91e6a6213b6a12ffbab5dc403684e9f7eea8d54d7eacb191a5065d0a070c7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.103.0/multica-cli-1.103.0-linux-amd64.tar.gz"
      sha256 "50f39ac275b28b2034a6f56a4db31b0d1b7edae10d95417b397e034b04e9dc66"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.103.0/multica-cli-1.103.0-linux-arm64.tar.gz"
      sha256 "363f75a5704c297da838f21746996e8a9116fa71d4a2c3dfa79acbe155411a0d"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
