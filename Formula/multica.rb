class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.47.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.47.0/multica-cli-1.47.0-darwin-arm64.tar.gz"
      sha256 "8794a5a2505d381562c7ef884683208c1d226a47231d8023f33d4cdad62f58a3"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.47.0/multica-cli-1.47.0-darwin-amd64.tar.gz"
      sha256 "0c208fbb0ac6e71f401edeb96fa4c950767b98e554d769b4d0c96ec30f6cd50b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.47.0/multica-cli-1.47.0-linux-amd64.tar.gz"
      sha256 "b688caadf6869342a6eb8004a42558b5538caf761dd66916f88656a97bf28a22"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.47.0/multica-cli-1.47.0-linux-arm64.tar.gz"
      sha256 "ff969f1da11236abac4a6f248e745e7192caf88258c6000969477c53f4afb896"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
