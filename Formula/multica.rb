class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.68.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.68.0/multica-cli-1.68.0-darwin-arm64.tar.gz"
      sha256 "da45adcfb0dd2a0917a98d2411ba1481ba8eb4c2067a72f6af3bc7293f511182"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.68.0/multica-cli-1.68.0-darwin-amd64.tar.gz"
      sha256 "b19454e7fd6ea47ae3c6fe448dde0032444f4136e77be12d3f48abee48551ac9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.68.0/multica-cli-1.68.0-linux-amd64.tar.gz"
      sha256 "e170e9b5027d97dca88dbc7c95bea14f1fabd934349ea4923b9fd0b1dd181ae7"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.68.0/multica-cli-1.68.0-linux-arm64.tar.gz"
      sha256 "5b062cb2c8e3f9149d979b34b5f00d0c82bbddb75c31f4b9d31185fdc0b3555c"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
