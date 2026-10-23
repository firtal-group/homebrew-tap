class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.72.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.72.0/multica-cli-1.72.0-darwin-arm64.tar.gz"
      sha256 "c9286b84165d9d58d2cb6a1b6311ee9f4897d8c9d0967ca7a9d6b38b3ebfeac0"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.72.0/multica-cli-1.72.0-darwin-amd64.tar.gz"
      sha256 "54c80576874596a4ab8ec6ce608f0f4aa3464c79445a9e03be313a6d20c21763"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.72.0/multica-cli-1.72.0-linux-amd64.tar.gz"
      sha256 "9b41058bdadd238c589f6d2dcf4b057f4d1c6720d86b89286780f1a933845aa2"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.72.0/multica-cli-1.72.0-linux-arm64.tar.gz"
      sha256 "3a9d53bb03f9b1d360a2ee443245c1dc39561bbdaed27f7bd780620fe659480e"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
