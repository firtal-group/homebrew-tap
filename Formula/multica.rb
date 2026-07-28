class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.20.9"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.20.9/multica-cli-1.20.9-darwin-arm64.tar.gz"
      sha256 "ee568e8362fa79da009a97d307fde0f26e421c251996f2af573b897a2b56a382"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.20.9/multica-cli-1.20.9-darwin-amd64.tar.gz"
      sha256 "762e2ec21f757cbbfd28083412583cf32828d6114d8ea5e1be84ee7a3f734caf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.20.9/multica-cli-1.20.9-linux-amd64.tar.gz"
      sha256 "e44bd7d33a246f0daa0cb4bc500adb61b0d879e6d64ddde507714bce0c390477"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.20.9/multica-cli-1.20.9-linux-arm64.tar.gz"
      sha256 "5ad9461d1e2fba198996c3b02bc9d459a92a76636656a3e1631ab86cd9f8142d"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
