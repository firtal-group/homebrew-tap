class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.96.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.96.1/multica-cli-1.96.1-darwin-arm64.tar.gz"
      sha256 "d312e58e2b9cdd935fabd319afb0acb3afb3b1d7adcf1f6057e225ad1b2b674e"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.96.1/multica-cli-1.96.1-darwin-amd64.tar.gz"
      sha256 "fa617a0ed0c590d7785e1e699275b40b7f3de71a48c34df32eeb7e9629eab48f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.96.1/multica-cli-1.96.1-linux-amd64.tar.gz"
      sha256 "8d56713c7f6e5304ae2094d9f88628d5d4c746baaf514d060db41862990ba4c5"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.96.1/multica-cli-1.96.1-linux-arm64.tar.gz"
      sha256 "83456ec9ea9d0476f3418ac7cf3087ebfdf18e5c5c76dbd102203f64c86c76de"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
