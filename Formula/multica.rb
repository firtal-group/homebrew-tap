class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.16.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.16.1/multica-cli-1.16.1-darwin-arm64.tar.gz"
      sha256 "3abedfa1aa360c8987ad58f2a93b651fcc7e34518a15f5187375634ed0eadfb5"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.16.1/multica-cli-1.16.1-darwin-amd64.tar.gz"
      sha256 "c7a1ae464ee5cae317d9702bfd6819e38835597c8f3ccc8da4aef8c120088c05"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.16.1/multica-cli-1.16.1-linux-amd64.tar.gz"
      sha256 "c0d5e2f7253c32da16d3db27c262829e8c435fa9a848383fce2b519fe83ee9e8"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.16.1/multica-cli-1.16.1-linux-arm64.tar.gz"
      sha256 "5356f2830971e662f01ee63879b1295e6dd00b105eda16dd99e544a15e6c52b6"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
