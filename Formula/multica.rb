class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.4.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.4.1/multica-cli-1.4.1-darwin-arm64.tar.gz"
      sha256 "ab73c540cf32257ff0d6d507f8ed9dcd371ada087892eec78ac6eda6861cdc89"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.4.1/multica-cli-1.4.1-darwin-amd64.tar.gz"
      sha256 "4df6aac2ac13b7da569f22e45a51293b98832c40b53cf95af042769d11c9a574"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.4.1/multica-cli-1.4.1-linux-amd64.tar.gz"
      sha256 "0edd9f4cc88abdaa0acc7e0ba9a660cde5bec85ed71aff6ffef9e7346da503c0"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.4.1/multica-cli-1.4.1-linux-arm64.tar.gz"
      sha256 "fe4ce5fe18bb28fa5e3dfe98dff3c02d7375a15cfa92b514266bda6d80d7d954"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
