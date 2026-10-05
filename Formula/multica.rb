class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.58.5"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.58.5/multica-cli-1.58.5-darwin-arm64.tar.gz"
      sha256 "8926b56125d558fcf6e1b6294733b9d5a355749117def4779b3707d2403670a7"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.58.5/multica-cli-1.58.5-darwin-amd64.tar.gz"
      sha256 "de78ad56076d7accd315a327e626b05b821b1a1dd64b3cba5c122d6745ba1c0f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.58.5/multica-cli-1.58.5-linux-amd64.tar.gz"
      sha256 "45fbdeadbd15220b3185b550cd6738ff109cec0b17ceeb4a84030348e6cf7cfe"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.58.5/multica-cli-1.58.5-linux-arm64.tar.gz"
      sha256 "44a7015eb375ab49e1b21468e8934c7575f0d4a61acbb14736ed423d056fa42a"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
