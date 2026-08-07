class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.24.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.24.3/multica-cli-1.24.3-darwin-arm64.tar.gz"
      sha256 "5671d4a16d28cd11873964e77c472869ec30b96db09cab0620aa0cd794dc6b99"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.24.3/multica-cli-1.24.3-darwin-amd64.tar.gz"
      sha256 "cbe4fcf3ef935c741f4e91997927fa0bd9c2782d4e8b9965b94c652cc6cc8dc6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.24.3/multica-cli-1.24.3-linux-amd64.tar.gz"
      sha256 "8f05224f051b039b70c8640e39e40f2ef4887df8ed5dc399801cba2bfc26ea67"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.24.3/multica-cli-1.24.3-linux-arm64.tar.gz"
      sha256 "0a6d675cd7db67b2360d82a8439d79610c1998d10d33bde0eda2c1a9ca872617"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
