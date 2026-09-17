class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.48.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.48.0/multica-cli-1.48.0-darwin-arm64.tar.gz"
      sha256 "3d74232a25a32a2f491ff5a1d8dba34400730aa26947c65678a53bf79a759d50"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.48.0/multica-cli-1.48.0-darwin-amd64.tar.gz"
      sha256 "3af4a8e711a6c318eab3f33a574c2006e91edc8beb5d8dfd65e5f47298a7291d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.48.0/multica-cli-1.48.0-linux-amd64.tar.gz"
      sha256 "7feff92325cdbc8e2f74e13b8a92f14c88be67de36477f8b59c0f06a9b2b15c7"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.48.0/multica-cli-1.48.0-linux-arm64.tar.gz"
      sha256 "392668ce668f5e1633c128f42fc5e27c1a4eb8421970368b76feedaef06f3d93"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
