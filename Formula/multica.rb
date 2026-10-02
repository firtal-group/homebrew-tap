class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.57.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.57.0/multica-cli-1.57.0-darwin-arm64.tar.gz"
      sha256 "544b914e71c92315642ca749b11d0957005f068881f8f13d3e3d371c4e6f741a"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.57.0/multica-cli-1.57.0-darwin-amd64.tar.gz"
      sha256 "8e33fccdb49a1a363d427cc3d92fc0deab0ecc21142aa148141e82954a9f2ebe"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.57.0/multica-cli-1.57.0-linux-amd64.tar.gz"
      sha256 "610cd8521591e266363f000d0819a2bb6208028873fe86e0e6a69eaa63afede8"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.57.0/multica-cli-1.57.0-linux-arm64.tar.gz"
      sha256 "32757512837d58438386ebaf8fc9e62763d7c6d8f134f5839bd8f0ef487abf4c"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
