class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.12.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.12.1/multica-cli-1.12.1-darwin-arm64.tar.gz"
      sha256 "44323ec8a6c68b27706d6fc20199605d0d28f640acc24528cf135b20be44b98e"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.12.1/multica-cli-1.12.1-darwin-amd64.tar.gz"
      sha256 "d56e47d3db2e90e6ffe4cdc1c48d5ceed1f64d2bd19a4c58087967b275bcab5d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.12.1/multica-cli-1.12.1-linux-amd64.tar.gz"
      sha256 "70b2315d11e81e6993b1ebdf4fceba129fd818950dea75a2e7c05a113b85eefd"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.12.1/multica-cli-1.12.1-linux-arm64.tar.gz"
      sha256 "0567db6e24cd0f3b47a632d2d5395937efb71b8170ad3edb548749d24997a948"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
