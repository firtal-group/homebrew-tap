class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.64.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.64.1/multica-cli-1.64.1-darwin-arm64.tar.gz"
      sha256 "bf1f45770d89fb0b2b3dde3085c4599cdfcc181d9c65ee0f2b26eb124d5ebe36"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.64.1/multica-cli-1.64.1-darwin-amd64.tar.gz"
      sha256 "0942052f08b8dd7f91fbe7a9c9ce03f1c0ea5d550f8e126aaa15dbe4f0e25fba"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.64.1/multica-cli-1.64.1-linux-amd64.tar.gz"
      sha256 "15709a6d95a879fa8621ed436ae0b970739a38f15d49f5b70da3c920912f689f"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.64.1/multica-cli-1.64.1-linux-arm64.tar.gz"
      sha256 "65804832360040f74163e9b58e34f7262704f96e49dfaaea1f0e36657ce9f360"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
