class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.81.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.81.0/multica-cli-1.81.0-darwin-arm64.tar.gz"
      sha256 "f3b9c2af5db5642145b638e0862c4a864f2e0638f5b94d8c67b023d5dd2a4ff6"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.81.0/multica-cli-1.81.0-darwin-amd64.tar.gz"
      sha256 "09d05438568237e6e639ad0259232ea29f7352455df2ff89af59b9b9857deceb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.81.0/multica-cli-1.81.0-linux-amd64.tar.gz"
      sha256 "c964294f50b0dbc577faa1c672a4ad17f590e4d4e127f3106bb5904b08d162fe"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.81.0/multica-cli-1.81.0-linux-arm64.tar.gz"
      sha256 "296db26f817f083acb18add61bae7a6108cca2f639d050b574ba3044d764c889"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
