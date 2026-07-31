class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.23.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.23.0/multica-cli-1.23.0-darwin-arm64.tar.gz"
      sha256 "2307f77e9b2ccb2cba8c79436fea0c968f90bd7bef87aafbeb729e90608251a6"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.23.0/multica-cli-1.23.0-darwin-amd64.tar.gz"
      sha256 "5101ccc9c6c2ba052154fb97c31e486faf4974b71a7e38696f425407d24a84e7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.23.0/multica-cli-1.23.0-linux-amd64.tar.gz"
      sha256 "a7da0b4c1a1631777a61f70cb63b9ff945e53d9793a879cfd3317257057e766f"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.23.0/multica-cli-1.23.0-linux-arm64.tar.gz"
      sha256 "3e9f39bce1d110fccbb83903027c537d75fd9b890d4729b36a4b60b1328524ce"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
