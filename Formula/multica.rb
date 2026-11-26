class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.110.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.110.0/multica-cli-1.110.0-darwin-arm64.tar.gz"
      sha256 "80129fede6b7843ac6371056ab9906731214480259c1279ff0a4dde1c1024498"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.110.0/multica-cli-1.110.0-darwin-amd64.tar.gz"
      sha256 "bb4ec75822eec00317df3984a2ab23b916ad1435420511725464503165bff6d3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.110.0/multica-cli-1.110.0-linux-amd64.tar.gz"
      sha256 "8d7c1f0bf487f03b40d39ec7f8bc02a09031873b7dd5e86ea999ad51bd0deadb"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.110.0/multica-cli-1.110.0-linux-arm64.tar.gz"
      sha256 "cdb1dead6fa74c3158572fb082e9bd181d47406d478925e24626f21db46ab048"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
