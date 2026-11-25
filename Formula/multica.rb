class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.108.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.108.0/multica-cli-1.108.0-darwin-arm64.tar.gz"
      sha256 "f74bd7115fb168d1691eafd8c55bfbf79cca76aa3abf3b8bd11d84bc550bf56b"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.108.0/multica-cli-1.108.0-darwin-amd64.tar.gz"
      sha256 "03affde37de17e7c6d2156c86b1dd6d2af2951a0421f364ccbd87e9e98707188"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.108.0/multica-cli-1.108.0-linux-amd64.tar.gz"
      sha256 "9ceb9a7fd91303c89ddace30eeefae8d45b9adb9a4eec13d07afb099dbde8e8a"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.108.0/multica-cli-1.108.0-linux-arm64.tar.gz"
      sha256 "c6c69757175d94138e6d8b4caa5fa0ffe8e815bee440f1ca2b0eb032677e9d40"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
