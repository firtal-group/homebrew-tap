class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.87.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.87.0/multica-cli-1.87.0-darwin-arm64.tar.gz"
      sha256 "182ee05e6d9b978653cd62503cf7f54f5e8f16cfe62868e52459901524ed519e"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.87.0/multica-cli-1.87.0-darwin-amd64.tar.gz"
      sha256 "8942754e033375b62578d3439b3e75346701ffc9c5e82ccfe766c2f256115887"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.87.0/multica-cli-1.87.0-linux-amd64.tar.gz"
      sha256 "35c6c46368aeb7ccadbcdef8823b74907c78e3b008a029efe8d1dd43b6cd6e94"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.87.0/multica-cli-1.87.0-linux-arm64.tar.gz"
      sha256 "ff1a637404f009ca107ce51a786efac7b1b12459a98444a7ddcd064e71fffa82"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
