class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.59.8"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.59.8/multica-cli-1.59.8-darwin-arm64.tar.gz"
      sha256 "cb83175ffa22f481b0f79bac8009c8990aaf60693ec1464145793349a59e0329"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.59.8/multica-cli-1.59.8-darwin-amd64.tar.gz"
      sha256 "26cf61879c70e18fb6f72977c2a17ee08b241d032917fb68bfe3af3139ed8238"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.59.8/multica-cli-1.59.8-linux-amd64.tar.gz"
      sha256 "7af0b6343b948e3220e5f9fec93af73728a78e6b8159aaa49f0406105a5f570b"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.59.8/multica-cli-1.59.8-linux-arm64.tar.gz"
      sha256 "d27468a8b33c4934cd2ccd1fbf5272c7858d5d137cddcad89ce1baab1fd0d9ba"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
