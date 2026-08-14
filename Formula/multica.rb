class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.28.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.28.0/multica-cli-1.28.0-darwin-arm64.tar.gz"
      sha256 "4be22f98b858f939b41d65898811a031ea8838fec2a2171960dfed62d302d8b4"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.28.0/multica-cli-1.28.0-darwin-amd64.tar.gz"
      sha256 "300044c02c5ed0a30f627866685ed79cf42564c483b7e8a01954f2d43724c9fd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.28.0/multica-cli-1.28.0-linux-amd64.tar.gz"
      sha256 "8faa4847f3a5edc15f1e32d202c641a85de9979497b575a7745d274fff391163"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.28.0/multica-cli-1.28.0-linux-arm64.tar.gz"
      sha256 "eb98048048096dfa55672553e5029d65711dd10eda422d649b44eff0871b95bf"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
