class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.11.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.11.3/multica-cli-1.11.3-darwin-arm64.tar.gz"
      sha256 "d96db4c41425d6d15d7f8019e661c078011bd972483f229bcfbd37603dc8bee8"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.11.3/multica-cli-1.11.3-darwin-amd64.tar.gz"
      sha256 "01972d58a6fa578100b60c8d7074f4d3bf10f6a0d9d1064cc3850efc5aaec323"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.11.3/multica-cli-1.11.3-linux-amd64.tar.gz"
      sha256 "c0be5aaa1bea31d3d0bc5184f61c567eff51a293e3f1d638735b9010b475429d"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.11.3/multica-cli-1.11.3-linux-arm64.tar.gz"
      sha256 "a0a3f2aee9056d568583d8f6adaad33a18a0d29b02828422b8a90019feac5e32"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
