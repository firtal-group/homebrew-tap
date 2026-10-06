class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.59.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.59.1/multica-cli-1.59.1-darwin-arm64.tar.gz"
      sha256 "14aa8dbb1b7882e08341882dc1e45c676bc62df9a1a1173b23145f7e8f8cf1f9"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.59.1/multica-cli-1.59.1-darwin-amd64.tar.gz"
      sha256 "cee5951a7adb192a868785a4a9aa34b805e2395e32407946294c80b3d702f4a6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.59.1/multica-cli-1.59.1-linux-amd64.tar.gz"
      sha256 "bee007fd1773e2e13f7dc0ce5ea04577eca6aaf416672447d1800317781a8859"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.59.1/multica-cli-1.59.1-linux-arm64.tar.gz"
      sha256 "c5b163424ac80557e78b212429b6f81b9dacff63facad8fc427b04d383856904"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
