class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.20.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.20.3/multica-cli-1.20.3-darwin-arm64.tar.gz"
      sha256 "adbe6b1fa306fa289af0c659bc7f7ed0078385f51b8c8ec062ad06a83fa4753c"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.20.3/multica-cli-1.20.3-darwin-amd64.tar.gz"
      sha256 "aae852bfaae4a08b3e880bf33353a0104ca8f8120fd5b4514603d0d694c3032c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.20.3/multica-cli-1.20.3-linux-amd64.tar.gz"
      sha256 "ff804690108a2df795dabed3fadeacfef1941b87733295b51d5d774a4ade79f0"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.20.3/multica-cli-1.20.3-linux-arm64.tar.gz"
      sha256 "c2623f046c83e532421b536f37c3efd445b2a2409dcc869b11b8bd34b999114a"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
