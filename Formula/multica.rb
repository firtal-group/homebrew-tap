class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.3.0-247-g7e649eaff"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.3.0-247-g7e649eaff/multica-cli-1.3.0-247-g7e649eaff-darwin-arm64.tar.gz"
      sha256 "66b38e6e11189d32bbeb0ce77927abdd9bfb246f974eb4276563e251cbbd37cd"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.3.0-247-g7e649eaff/multica-cli-1.3.0-247-g7e649eaff-darwin-amd64.tar.gz"
      sha256 "5a604f1ddaa52f6bafc45102393799fc5fa58c2846aecc188b2fc300f72d4fc5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.3.0-247-g7e649eaff/multica-cli-1.3.0-247-g7e649eaff-linux-amd64.tar.gz"
      sha256 "64165ebe24be8a69ec16898d4e57182fa150f42074c5e3d5349defed69bc3815"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.3.0-247-g7e649eaff/multica-cli-1.3.0-247-g7e649eaff-linux-arm64.tar.gz"
      sha256 "d9896c60ed50c57fdee08f582de57e789ee35345df50d33b17df57ab4bfa8c65"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
