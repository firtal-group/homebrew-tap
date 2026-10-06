class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.59.7"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.59.7/multica-cli-1.59.7-darwin-arm64.tar.gz"
      sha256 "b9761e75d65a2020c6562abcc9be74aa32d641622470d44c55d02caf7fa83d6e"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.59.7/multica-cli-1.59.7-darwin-amd64.tar.gz"
      sha256 "68c4e30a58901b0b2644c0c1322f4caf354a6cb1eb616e9377e7247beb263041"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.59.7/multica-cli-1.59.7-linux-amd64.tar.gz"
      sha256 "6ff22c31a2c4777dfd072a2541f77162f1c5d40e96f685d23ac4cf0740f32635"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.59.7/multica-cli-1.59.7-linux-arm64.tar.gz"
      sha256 "34a3bc583d6d7a7e404e39816eb1e96f1e916a64390d87ed1e40d8ae72076e2d"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
