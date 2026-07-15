class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.15.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.15.0/multica-cli-1.15.0-darwin-arm64.tar.gz"
      sha256 "47bd1c7d8f4d821b91c6fa4fb69c57a638b7522bdf6ead6bd81e063198a7eaf5"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.15.0/multica-cli-1.15.0-darwin-amd64.tar.gz"
      sha256 "263d6521dc4b556325e9794f5082447ec6f95603df8cb8fbafff17a4389064e4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.15.0/multica-cli-1.15.0-linux-amd64.tar.gz"
      sha256 "06c83152440e817d045b58ba1ba45dda5d812e711ab5278bafe1862a7a84ea2e"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.15.0/multica-cli-1.15.0-linux-arm64.tar.gz"
      sha256 "533af91b63dbb196ba86c4ddee894b89bc8b3cb63576bfc88862dbc077dcdec6"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
