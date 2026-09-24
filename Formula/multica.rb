class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.50.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.50.0/multica-cli-1.50.0-darwin-arm64.tar.gz"
      sha256 "b79e2458e23e396e9d7d51a2057f73c455444f344af26bc2144c16feac3f1d46"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.50.0/multica-cli-1.50.0-darwin-amd64.tar.gz"
      sha256 "500314b0be1ef34b62752ad2e4a515b722b65fb2172a45738bfce6f1cc32ef94"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.50.0/multica-cli-1.50.0-linux-amd64.tar.gz"
      sha256 "d4590a2fb6eb33ef562a35f4488823d91ae64d266e25ce175f21734ba12c4d06"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.50.0/multica-cli-1.50.0-linux-arm64.tar.gz"
      sha256 "fbc56280244d45bdd6848645c41eba0d3a727ffa3a674698fba30507453398d7"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
