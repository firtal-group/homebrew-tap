class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.17.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.17.2/multica-cli-1.17.2-darwin-arm64.tar.gz"
      sha256 "11cb8c9f23aee50a07ff9c43b2b3f7be0a2300850981e9a706c62131c1d8a88e"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.17.2/multica-cli-1.17.2-darwin-amd64.tar.gz"
      sha256 "9c0b186417a29c8a58450cb0a34ea7da301a7bda10bb25919d31ed8a19461a06"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.17.2/multica-cli-1.17.2-linux-amd64.tar.gz"
      sha256 "e404338e4556b6520e256694925de0dcf21da7fb194975620bd40701827b1319"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.17.2/multica-cli-1.17.2-linux-arm64.tar.gz"
      sha256 "c962ebda92602b334db5bae2668362e3a382ca44099a8863eb8333ee7583b0bf"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
