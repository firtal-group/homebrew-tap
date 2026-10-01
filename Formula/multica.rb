class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.55.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.55.0/multica-cli-1.55.0-darwin-arm64.tar.gz"
      sha256 "a5dfdf8c9800026edc7c08223b1ad077760563d061ce81bf55bf3cd20f0e18c6"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.55.0/multica-cli-1.55.0-darwin-amd64.tar.gz"
      sha256 "4f0aa0b14f0a700e1be6ca3542d6a992f450aa72ba9caa71b3f728ef1061ef2e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.55.0/multica-cli-1.55.0-linux-amd64.tar.gz"
      sha256 "8b94f1e8d4265f894fcd7af3d6e634d5996d2adbb4e9fca7732454deb9fd38c2"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.55.0/multica-cli-1.55.0-linux-arm64.tar.gz"
      sha256 "bb4f233d2730107e730a592bdf288c8bede2c3e42980fb98d429d3e0439b855b"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
