class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.11.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.11.1/multica-cli-1.11.1-darwin-arm64.tar.gz"
      sha256 "afbe33ac63f601822ef29befe7a76f69b59ccc6630b48b6d56150060c66623ea"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.11.1/multica-cli-1.11.1-darwin-amd64.tar.gz"
      sha256 "d67875788fbcbc72467e601eab0b70f74df35966047a2bf235e3debe9a545b83"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.11.1/multica-cli-1.11.1-linux-amd64.tar.gz"
      sha256 "f18ea0b188e7484ec1f7d30c258311b64fc1655a1aefdb3c271bf020f0a9a515"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.11.1/multica-cli-1.11.1-linux-arm64.tar.gz"
      sha256 "071476bda9716422664b028506be98fab484946232e77bba999cc3d216440bd4"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
