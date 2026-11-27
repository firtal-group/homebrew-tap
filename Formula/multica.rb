class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.111.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.111.0/multica-cli-1.111.0-darwin-arm64.tar.gz"
      sha256 "af60297ad7b2f35b0c664579757887f0d71ba41e8964b53d1a557bbd8160c5df"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.111.0/multica-cli-1.111.0-darwin-amd64.tar.gz"
      sha256 "05b789631a27e37d7be637703a78ff27a3d1ffd8d6c190ecbbb2a12241e6d67e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.111.0/multica-cli-1.111.0-linux-amd64.tar.gz"
      sha256 "bb64eeeaa3aa09a1e6c261e0ea447b6df703222d9b0d788c00ab8302ab16b39a"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.111.0/multica-cli-1.111.0-linux-arm64.tar.gz"
      sha256 "8dd2ca8e2459c67525914d59acf72cb0d77af0ac469992c13e8532d93362ce35"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
