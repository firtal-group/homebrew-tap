class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.67.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.67.0/multica-cli-1.67.0-darwin-arm64.tar.gz"
      sha256 "1f84c0c504c7e7859306ff8ab4ec3ab4f9e2639cba67167fa7008f29c0318a22"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.67.0/multica-cli-1.67.0-darwin-amd64.tar.gz"
      sha256 "2819da5149916289181132bdc3798d6b4984050a4aa32dc6c3c57e3e347533e0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.67.0/multica-cli-1.67.0-linux-amd64.tar.gz"
      sha256 "21d374f7e96778dff2754b1b694028bccbb19e8ec8d03e0bbd07be46adf769f6"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.67.0/multica-cli-1.67.0-linux-arm64.tar.gz"
      sha256 "251b46c09019b88b1e713740d3ca8e0342415b59e83e57e9bdac4b3ac8d147b1"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
