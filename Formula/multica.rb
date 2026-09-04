class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.38.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.38.0/multica-cli-1.38.0-darwin-arm64.tar.gz"
      sha256 "9de9101f24b644a4a5bba9deb869cf9456a626a0dc7f3859415bd372206822ba"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.38.0/multica-cli-1.38.0-darwin-amd64.tar.gz"
      sha256 "ffbc1b6bedb1b3a83c93576dbdea034de2ef3d5f1e4ed88f46800ba768cabf24"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.38.0/multica-cli-1.38.0-linux-amd64.tar.gz"
      sha256 "7757f363fbbc0308829c6f312b65b46b64bd402084e84e3e44e63adfb714973f"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.38.0/multica-cli-1.38.0-linux-arm64.tar.gz"
      sha256 "109f113bb5f7cbc4f81b9cf1e0d978d319f1fe9889c9bbe5fc48d383f8487433"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
