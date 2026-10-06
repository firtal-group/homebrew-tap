class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.59.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.59.4/multica-cli-1.59.4-darwin-arm64.tar.gz"
      sha256 "e1009d0746b41f54ed31045f2a9ab2b701e9d1c6e49919b67dec5526b5d04d71"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.59.4/multica-cli-1.59.4-darwin-amd64.tar.gz"
      sha256 "0da4f625f87a740f0bef29b594294a1a2eb695fbbe36006cc3962e6bbb02d51e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.59.4/multica-cli-1.59.4-linux-amd64.tar.gz"
      sha256 "69e814371130c5ed3d681d279dc609e61efa97c9277e54da40b17066cc13af7a"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.59.4/multica-cli-1.59.4-linux-arm64.tar.gz"
      sha256 "ff54e1eca6bf4896e85943af54b23236f18f78cd49183d17c9b65d9fe5b52efd"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
