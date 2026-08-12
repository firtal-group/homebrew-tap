class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.25.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.25.1/multica-cli-1.25.1-darwin-arm64.tar.gz"
      sha256 "d595c8a706f017689f861eedf82db25e80bbae56d4d138a6c4761827ea05bd92"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.25.1/multica-cli-1.25.1-darwin-amd64.tar.gz"
      sha256 "1b27337e5e6425635ba56cef3b566de306c9cc581ff99ec8f10bc896b8c2c53a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.25.1/multica-cli-1.25.1-linux-amd64.tar.gz"
      sha256 "fabf60f702a1905d07df3768fb798936ff6fe41a5a1e5434c8ea49ff6b0765b6"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.25.1/multica-cli-1.25.1-linux-arm64.tar.gz"
      sha256 "8e5d90b8efb5a9b50282ab45702f72af15ee0343baa6e2b781518cc88037d7f7"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
