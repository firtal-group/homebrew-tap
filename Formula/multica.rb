class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.11.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.11.4/multica-cli-1.11.4-darwin-arm64.tar.gz"
      sha256 "bf8fb1c33d2d4254dad4b837eb863ccddee44f27537dc50382533371eba9d9c4"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.11.4/multica-cli-1.11.4-darwin-amd64.tar.gz"
      sha256 "1531015aa149f9d390caff9f42edba46225637ade22340d31071610d049d0853"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.11.4/multica-cli-1.11.4-linux-amd64.tar.gz"
      sha256 "06f59c0afe0dc3e2d2d9c02ff02d27a248e71374cad8104b044e7e63f55a8f50"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.11.4/multica-cli-1.11.4-linux-arm64.tar.gz"
      sha256 "3f88d4958e0dd8872e3d7f8acf475d28973cad58fe0171b3a50e436b005100ad"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
