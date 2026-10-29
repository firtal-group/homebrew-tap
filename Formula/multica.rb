class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.78.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.78.0/multica-cli-1.78.0-darwin-arm64.tar.gz"
      sha256 "f7834a7dcd98ab8b54627e9f9994a39c903f0a65cef130a06407031e99dee28c"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.78.0/multica-cli-1.78.0-darwin-amd64.tar.gz"
      sha256 "d9b87d408faf80f904512a32f64233a543d8eee420e5e385ff08bef8247b99e5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.78.0/multica-cli-1.78.0-linux-amd64.tar.gz"
      sha256 "0e332145dbf943d20e493ac5354b0da6442643c0c86b3c972b0402b349b462b7"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.78.0/multica-cli-1.78.0-linux-arm64.tar.gz"
      sha256 "161696f03942f4df20a2673ccd98481b98b13e331aa76d253892bd8285db7478"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
