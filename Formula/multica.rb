class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.14.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.14.1/multica-cli-1.14.1-darwin-arm64.tar.gz"
      sha256 "219984e8f44cb2410b557eb25aec36d5f6d5d84b1c026e2b1ffdd91abe7cb2db"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.14.1/multica-cli-1.14.1-darwin-amd64.tar.gz"
      sha256 "841f386a510c802631887cdaec272acf3ea896cd1cac6e35b332d8240bdd4b1a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.14.1/multica-cli-1.14.1-linux-amd64.tar.gz"
      sha256 "dccf80e12f4a64e0253dc9d257aebc0347630d9d7d94ca21e26fae038bc64165"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.14.1/multica-cli-1.14.1-linux-arm64.tar.gz"
      sha256 "62374465c0f5b0faef1864fa5465c84942a658f93c065c2ba1390e26ef1aed75"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
