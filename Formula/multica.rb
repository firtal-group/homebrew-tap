class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.4.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/firtal-cerebro/releases/download/v1.4.0/multica-cli-1.4.0-darwin-arm64.tar.gz"
      sha256 "12a8995e9afee3949f9881b7fa9038c9e857c7ce0662c6919254c77c82f2a509"
    end
    on_intel do
      url "https://github.com/firtal-group/firtal-cerebro/releases/download/v1.4.0/multica-cli-1.4.0-darwin-amd64.tar.gz"
      sha256 "ded529b87c231ab901c8e82999bdd871da1bda6427abd7d26781c7ccc1ca0c5e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/firtal-cerebro/releases/download/v1.4.0/multica-cli-1.4.0-linux-amd64.tar.gz"
      sha256 "f355def3f4952f1c88fdab8753c8e60556fa2bf0d79861cdbdf42191b90b2a75"
    end
    on_arm do
      url "https://github.com/firtal-group/firtal-cerebro/releases/download/v1.4.0/multica-cli-1.4.0-linux-arm64.tar.gz"
      sha256 "a8a79c6daa8f8b70e59941831e5001e1f8a846b8cd50d4af7e83caf1a4bbbbe5"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
