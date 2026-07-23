class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.18.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.18.1/multica-cli-1.18.1-darwin-arm64.tar.gz"
      sha256 "0cdabf39ab0a84ed18bfbefe46d45b4cce28c885cb4c4085b582a23d895111e9"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.18.1/multica-cli-1.18.1-darwin-amd64.tar.gz"
      sha256 "7188c2f1a8b3cc1762334906192a32e58ee1d21413f167389ddde762f0ced277"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.18.1/multica-cli-1.18.1-linux-amd64.tar.gz"
      sha256 "f9ee315cf8fb1408c8dbe4d46cb3246d9ebeec1c235788e39184e4acfe62442f"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.18.1/multica-cli-1.18.1-linux-arm64.tar.gz"
      sha256 "e79d8da649319115659afdb04fc3aea33a1abc3a756dec24418029edf86688f6"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
