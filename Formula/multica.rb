class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.104.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.104.0/multica-cli-1.104.0-darwin-arm64.tar.gz"
      sha256 "7c897a4c93631381017b4cfa10638c3921abd13a009d64b938da7f29ccd5b05a"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.104.0/multica-cli-1.104.0-darwin-amd64.tar.gz"
      sha256 "a88cf59b70cf5f6d563e4e8e7a1c894713fbd35ffc675e550b79dad887d07e32"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.104.0/multica-cli-1.104.0-linux-amd64.tar.gz"
      sha256 "5bbbdcebdc9e201e330f5fc802553adcaab7b581d08070c9a65ee802dac28c74"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.104.0/multica-cli-1.104.0-linux-arm64.tar.gz"
      sha256 "4ee72ef4500e585376613fdd37ce386354f4c7bd974cd89f821b992e938c337b"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
