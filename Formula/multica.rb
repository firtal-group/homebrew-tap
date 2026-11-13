class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.93.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.93.0/multica-cli-1.93.0-darwin-arm64.tar.gz"
      sha256 "ae29b56d41ba13a369bcdc7d9459f6ec1dbb60bf20d6a43a77843bbbab4ebb9e"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.93.0/multica-cli-1.93.0-darwin-amd64.tar.gz"
      sha256 "069fcd7765bdda1a38c83aba99413f99119805c1cbfd58911651239486a1cb24"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.93.0/multica-cli-1.93.0-linux-amd64.tar.gz"
      sha256 "dfa591ece60b2c99cd571cca25d6f9e5ffbee77722c3dfd5451ab6deaf11fbd2"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.93.0/multica-cli-1.93.0-linux-arm64.tar.gz"
      sha256 "0c6a614095e9d7f77a1bd859c40fa671a780a55da5bd29119a21fe0249a62b37"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
