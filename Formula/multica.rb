class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.58.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.58.0/multica-cli-1.58.0-darwin-arm64.tar.gz"
      sha256 "73b7294dcb9628146127a840a9924ac489850ab78bafa6d6a5f0e6f4a45bccd3"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.58.0/multica-cli-1.58.0-darwin-amd64.tar.gz"
      sha256 "e550c1c34bc1b0d69559d131a67127dede0f2cb81cc007bab85893d125029c72"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.58.0/multica-cli-1.58.0-linux-amd64.tar.gz"
      sha256 "d714f1e05871e2cd8d9e1d0b50a1d687e311602e812994e118d3966908818d40"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.58.0/multica-cli-1.58.0-linux-arm64.tar.gz"
      sha256 "2d295fa1d15757a76860b93f56850cc4c990613d9948c30861f0937951af8b36"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
