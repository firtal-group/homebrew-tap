class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.95.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.95.0/multica-cli-1.95.0-darwin-arm64.tar.gz"
      sha256 "e664d273f69ec9745bab8db41840139148f04c58308ad790d2167b287ca33e92"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.95.0/multica-cli-1.95.0-darwin-amd64.tar.gz"
      sha256 "84bb19c37dc6dad26c5c04275700039bd69ba2ad21e5bf2e0cf6a787720132bd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.95.0/multica-cli-1.95.0-linux-amd64.tar.gz"
      sha256 "6b709fa36846607538db949565884675953391f29a070e64e11ba4aa04a6513e"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.95.0/multica-cli-1.95.0-linux-arm64.tar.gz"
      sha256 "4d61d0ed6f11a380c1999e1f9726f1536742ea2019adc673040cd6ea769b5c29"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
