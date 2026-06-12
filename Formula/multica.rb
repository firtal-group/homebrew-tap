class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.4.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.4.2/multica-cli-1.4.2-darwin-arm64.tar.gz"
      sha256 "319e645ec10ca7219e265792e4e032303f3932d4114a20f17e206d7f9e205407"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.4.2/multica-cli-1.4.2-darwin-amd64.tar.gz"
      sha256 "c33cc7009be51a2ee647a66cc8c31853b89ae2b88361efd4b1cf6bea7ab3d3a3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.4.2/multica-cli-1.4.2-linux-amd64.tar.gz"
      sha256 "b2e4289690c4ee528b980751e7b7830803d3704299edf0ce4f342842214dbbbd"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.4.2/multica-cli-1.4.2-linux-arm64.tar.gz"
      sha256 "1ccd95fbff910fd891136ffbb9dcc0bc95270be6468f828a274f963178bf4ebb"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
