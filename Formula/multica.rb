class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.22.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.22.0/multica-cli-1.22.0-darwin-arm64.tar.gz"
      sha256 "20dc5b7f1019f2a01c2fddb828c3d279f2a9f64c4ecf542651d8ada14636750e"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.22.0/multica-cli-1.22.0-darwin-amd64.tar.gz"
      sha256 "71c175eaf852cdc8b8fa72dcfc1ef11530c4a3930dad42af6f65b724e1f5d3e1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.22.0/multica-cli-1.22.0-linux-amd64.tar.gz"
      sha256 "5a8c35d144f07d438ac63064ceabc62403e0928137fa091b09dba3d36b95b36a"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.22.0/multica-cli-1.22.0-linux-arm64.tar.gz"
      sha256 "2fcc72b8c68ca7ff7c5cffed508c1954448e28f35b0602aff43c6c769a6da69a"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
