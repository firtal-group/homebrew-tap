class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.88.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.88.0/multica-cli-1.88.0-darwin-arm64.tar.gz"
      sha256 "fa4dcb441f2fc8ff5011345c007d1ffed0d51473ac1a23a7a6be09f49364cac7"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.88.0/multica-cli-1.88.0-darwin-amd64.tar.gz"
      sha256 "c442adc1bf0a4e223ce0d5c7d253d3bcc6a778bf91a2cda58a05a1a739eb04c8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.88.0/multica-cli-1.88.0-linux-amd64.tar.gz"
      sha256 "09e2ef83d86d41683a99cec3a252a171289c5a07fc7415c8c3159af4917b9e4a"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.88.0/multica-cli-1.88.0-linux-arm64.tar.gz"
      sha256 "33fbfb9403f2e3a0b4c7fb9b99ec2a2c8fe7ddb183848937251ebecd5d2afb90"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
