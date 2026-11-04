class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.84.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.84.0/multica-cli-1.84.0-darwin-arm64.tar.gz"
      sha256 "d845b4f8aaa954700cbc3fbe71f95000291f159ece4dd033194fcef6f464cb29"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.84.0/multica-cli-1.84.0-darwin-amd64.tar.gz"
      sha256 "514e06751cc3f7765406fec789f118e638ce2a7b0a86adb6b34fb398d64ef0b1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.84.0/multica-cli-1.84.0-linux-amd64.tar.gz"
      sha256 "cd1acd9755b5f273c8435951b337b9a219abf1f4d21e6fe90db3551259e214b2"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.84.0/multica-cli-1.84.0-linux-arm64.tar.gz"
      sha256 "4dbbe840d91f1fa742b4a7495d62e53e077f396ecd346b9447ea28c583f4fbfe"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
