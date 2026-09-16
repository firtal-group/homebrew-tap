class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.46.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.46.0/multica-cli-1.46.0-darwin-arm64.tar.gz"
      sha256 "920ccb0c58b22b951e992c46fd42d170f25112967777a2e3dd675cfc0a68e048"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.46.0/multica-cli-1.46.0-darwin-amd64.tar.gz"
      sha256 "f5fb652bc410a58b9c33b44b0dcfb6d5f9c8251ce0eaa22375b14b426b14df7f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.46.0/multica-cli-1.46.0-linux-amd64.tar.gz"
      sha256 "4e7113743ea3c83bf3f115b77135c76cc97f381c0f105ba176425dea22784eae"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.46.0/multica-cli-1.46.0-linux-arm64.tar.gz"
      sha256 "a5632536d01f3346378e0593becf6bee21ca5ebd2646ff2b6f2538a9e6ed9c91"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
