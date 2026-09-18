class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.48.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.48.3/multica-cli-1.48.3-darwin-arm64.tar.gz"
      sha256 "3de9da01e3b597b6755e66b0d355b815087bf2927053b3b964d8427d9e80a959"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.48.3/multica-cli-1.48.3-darwin-amd64.tar.gz"
      sha256 "d34041cc90057b15b037793feca054d57d8cf734e8be70953056ee6b87666b7d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.48.3/multica-cli-1.48.3-linux-amd64.tar.gz"
      sha256 "eea74d55739eca4bddbecfbfcc96ebe3aeb454573f4bebca06c0500a1f26cc90"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.48.3/multica-cli-1.48.3-linux-arm64.tar.gz"
      sha256 "0e682f9c0528ee8c626dc0b3846ab0408bb1e02ad169f5f1e15e2c59cc49928f"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
