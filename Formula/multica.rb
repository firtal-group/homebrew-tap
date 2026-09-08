class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.41.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.41.0/multica-cli-1.41.0-darwin-arm64.tar.gz"
      sha256 "10652b34ea53a90b3a57419ee68cab107e0610700ff81a4e3031569c52df84f8"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.41.0/multica-cli-1.41.0-darwin-amd64.tar.gz"
      sha256 "886ca9735fb3a9bed1f60fae1d2052b83a68c726c91494dd4d77e45529f7058f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.41.0/multica-cli-1.41.0-linux-amd64.tar.gz"
      sha256 "8fe8693d1988d0617f59fbff52fc8421f6755481c205396380138f1837aef7bd"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.41.0/multica-cli-1.41.0-linux-arm64.tar.gz"
      sha256 "ef60c21b75e5b45ddb1a205b657e768e93a8cbba0bce5a5adfe31d92f40fe037"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
