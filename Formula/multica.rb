class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.7.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.7.0/multica-cli-1.7.0-darwin-arm64.tar.gz"
      sha256 "e5408fa9252060a97b74530116271e3a933ddb018d7b4eafe356a99e78f955cd"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.7.0/multica-cli-1.7.0-darwin-amd64.tar.gz"
      sha256 "f7e4452adb6263c242d63dcf9124317669d7a5b54409e07c0535d8b285aafe6b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.7.0/multica-cli-1.7.0-linux-amd64.tar.gz"
      sha256 "33ae2ac440bce877bbbd710cce25fc547e75313d226bd6b5fa2ac987c8b22256"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.7.0/multica-cli-1.7.0-linux-arm64.tar.gz"
      sha256 "319e2b5f5da5ecc003cf91ffca1fc57582a7f71006e6213c2a2cbabb8eae8e22"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
