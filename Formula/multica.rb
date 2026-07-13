class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.14.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.14.3/multica-cli-1.14.3-darwin-arm64.tar.gz"
      sha256 "87d26fc3bafe3d9ba70ce558594a7e59e1b4eb8544c739d58ce672814d1057d0"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.14.3/multica-cli-1.14.3-darwin-amd64.tar.gz"
      sha256 "44945c39703d6ecc45cd373a1ed25ca9f604ea026667b1d5e328a1c77b592899"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.14.3/multica-cli-1.14.3-linux-amd64.tar.gz"
      sha256 "736839e443eb9705093763e97db9bdb66af77206e4c9213b35eaf30e88fab8a2"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.14.3/multica-cli-1.14.3-linux-arm64.tar.gz"
      sha256 "b5c5ab80b0a13ce0eba56b2b7bdcf120723adfdae45efa35a608006bd43b5b94"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
