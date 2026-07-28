class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.21.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.21.0/multica-cli-1.21.0-darwin-arm64.tar.gz"
      sha256 "9579d77e473fc24111763c1c8400e0d119b59a203f9757061e3eb7beff68a0b7"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.21.0/multica-cli-1.21.0-darwin-amd64.tar.gz"
      sha256 "e5cced70d0f7ec2f26689dd972a460985467ba09ac5d51346f04f39f21e13b21"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.21.0/multica-cli-1.21.0-linux-amd64.tar.gz"
      sha256 "3549ca1a01fb58ab072d85416f7a7a8f9b3c5e5a4ffcb59231bbd3e56093c7a6"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.21.0/multica-cli-1.21.0-linux-arm64.tar.gz"
      sha256 "94e6be662577d701c2e102e0c4b39a981fa36f14c52770851e95d872de50b307"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
