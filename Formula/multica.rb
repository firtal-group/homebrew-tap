class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.63.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.63.1/multica-cli-1.63.1-darwin-arm64.tar.gz"
      sha256 "8cbca2cfb1186bf15b7ab75e0476c7b4fee17e3aca8b1e4db457bf1ea48d020d"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.63.1/multica-cli-1.63.1-darwin-amd64.tar.gz"
      sha256 "cf5334d0d0a5f3588cca5eeed1976d9fd826c4551cf9e502c92ada633db8fe55"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.63.1/multica-cli-1.63.1-linux-amd64.tar.gz"
      sha256 "d6e0f364ad7e3b932b42e2818795b2851053c0e62bcf038cc6101b0c5d747df8"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.63.1/multica-cli-1.63.1-linux-arm64.tar.gz"
      sha256 "9a1ffd670e3eb31d7ac27a40ebb6b647d9d1632b941b5b413c3253b4caca0746"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
