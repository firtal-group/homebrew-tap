class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.20.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.20.2/multica-cli-1.20.2-darwin-arm64.tar.gz"
      sha256 "fd0d56da65f7e5369580f6fe49c820eb8c9cb6ca426b06dc94e5fd06d9058504"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.20.2/multica-cli-1.20.2-darwin-amd64.tar.gz"
      sha256 "96d4cca8f2a30cec59a23c277e58538250d6909ee910dacec1346a7d5a274635"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.20.2/multica-cli-1.20.2-linux-amd64.tar.gz"
      sha256 "687e758ce48b8ca42a0af675b9d1403713c5836746ab1c9f9d2a0019fcd43f16"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.20.2/multica-cli-1.20.2-linux-arm64.tar.gz"
      sha256 "433f7bb6eaa9e6065f488699964fa8252f4f1a132e63923c413e718184a41b83"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
