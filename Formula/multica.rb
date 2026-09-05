class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.39.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.39.0/multica-cli-1.39.0-darwin-arm64.tar.gz"
      sha256 "03d7967b62f36f22214fe2dac99b3f41b08cc529103077afe908fb93a5826f43"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.39.0/multica-cli-1.39.0-darwin-amd64.tar.gz"
      sha256 "5f3e8d2df30084ae3e2d91d5629e8ae824f1d7beaa6be8cf8ea15912855b1789"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.39.0/multica-cli-1.39.0-linux-amd64.tar.gz"
      sha256 "50160e56c39be2a33e6d5a3dbfaf04979ca4968f9939f096d7608e4c9670a599"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.39.0/multica-cli-1.39.0-linux-arm64.tar.gz"
      sha256 "282909949f72170d4b50cc0de18230cd13907cad3959a09dfa61f889e21f324b"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
