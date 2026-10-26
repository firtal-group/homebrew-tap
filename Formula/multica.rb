class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.75.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.75.0/multica-cli-1.75.0-darwin-arm64.tar.gz"
      sha256 "cd9b042289f3a44ec4ecaf132f7d1c9e1766e09fcfae1c8461dbff5c1c5ea9fe"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.75.0/multica-cli-1.75.0-darwin-amd64.tar.gz"
      sha256 "975359b9d2e6d9efc8520a5dabcc9800ef26f91186200aca5cd87fdaf1ba3334"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.75.0/multica-cli-1.75.0-linux-amd64.tar.gz"
      sha256 "300a128564b537971f32846606fe70f6c77b75964cb11accc8a539cb0cf16f69"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.75.0/multica-cli-1.75.0-linux-arm64.tar.gz"
      sha256 "ba2df40249e5044b8af3eab92faaee3bab371c2ccebf03c08c30f420df055188"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
