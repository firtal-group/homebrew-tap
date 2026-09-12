class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.43.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.43.1/multica-cli-1.43.1-darwin-arm64.tar.gz"
      sha256 "07d5a8b44d59506cda3498d6f58032d77db797f4c3e4a23dd2338e3ab47ea8e5"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.43.1/multica-cli-1.43.1-darwin-amd64.tar.gz"
      sha256 "ddb09d5ab2345dcbd63f0366ac27c078decbb48f6f54ecd7c6d35033d8ec4494"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.43.1/multica-cli-1.43.1-linux-amd64.tar.gz"
      sha256 "c769df3b6cce7f67e217bc2b85b7fd5740d2027f6c5c10b289467f93db21b00c"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.43.1/multica-cli-1.43.1-linux-arm64.tar.gz"
      sha256 "8284550cdd60ed41fb0d2b69d3b36c1c528f57ba96daccbabec2f63e7c4a858e"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
