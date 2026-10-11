class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.60.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.60.4/multica-cli-1.60.4-darwin-arm64.tar.gz"
      sha256 "159abf938b401fc630763d1008477511a867199b11aaabc5e859f24e62b23b57"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.60.4/multica-cli-1.60.4-darwin-amd64.tar.gz"
      sha256 "7a60c1d7b2bfb3594c8ad9f98b88d02501f3e16e098ded6f3cfe9ef383d8191c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.60.4/multica-cli-1.60.4-linux-amd64.tar.gz"
      sha256 "759b69071091e9982e5c641ccd9072d02d4e1ca1cea2fe7045ee78f6f455e7c7"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.60.4/multica-cli-1.60.4-linux-arm64.tar.gz"
      sha256 "9814855c402b54d2359bc0b4f2ad4a64115954cc771a712b9ab256f875b24a30"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
