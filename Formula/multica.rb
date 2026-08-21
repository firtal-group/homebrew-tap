class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.31.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.31.0/multica-cli-1.31.0-darwin-arm64.tar.gz"
      sha256 "1b413e20b64e9e81198f2ea9c90c07c99d0a5d271fc43466ac13f64bcad4d9de"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.31.0/multica-cli-1.31.0-darwin-amd64.tar.gz"
      sha256 "93e589b1f4ed4bbaf8611a10657ecc5f9ed9e657242da45c749a1068b1066c29"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.31.0/multica-cli-1.31.0-linux-amd64.tar.gz"
      sha256 "36c06bbf60e4224ca3b14d971b8795e19e2588e0abc2c84c5e5ea943e318d303"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.31.0/multica-cli-1.31.0-linux-arm64.tar.gz"
      sha256 "7d8740f8ba23d5765439718f7f1476f0f8a146707d62b6c25f0f45f8f8326abd"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
