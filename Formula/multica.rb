class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.44.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.44.0/multica-cli-1.44.0-darwin-arm64.tar.gz"
      sha256 "64cd86b1cf91a357d4e2d47a1c1bd0432a7539c3a72cfdce4839de570a55bb5c"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.44.0/multica-cli-1.44.0-darwin-amd64.tar.gz"
      sha256 "d68494dfd0e0de996a52fc7c1cda45cb9038e4403fb04dddfcc034b2cc4f587c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.44.0/multica-cli-1.44.0-linux-amd64.tar.gz"
      sha256 "37dc93f27ae47ca8999b9c71a720db183321c8b52ed057d8eb18bdb4c2da8e76"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.44.0/multica-cli-1.44.0-linux-arm64.tar.gz"
      sha256 "7e13d122183d92df7368173ee2f5dfd54a0d8ee19ace449a3a6c16c50582a315"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
