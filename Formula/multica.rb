class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.89.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.89.0/multica-cli-1.89.0-darwin-arm64.tar.gz"
      sha256 "2eb5951c2adb49be7dea5cf0b456374a496f432f2fff2b89a105e547caf37546"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.89.0/multica-cli-1.89.0-darwin-amd64.tar.gz"
      sha256 "622f5c573dca7a27ab3deaf98b60f14a5443750b1f0ca78c00485a843bffb614"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.89.0/multica-cli-1.89.0-linux-amd64.tar.gz"
      sha256 "2c738ff8fa29d08ad7dedc92c2751e613db0caf0465498cc2d5235976ec59c79"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.89.0/multica-cli-1.89.0-linux-arm64.tar.gz"
      sha256 "ab6a6922414463aaba9778a4c878118a8a726ba7d26785ff31ace6bc2a0fa92b"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
