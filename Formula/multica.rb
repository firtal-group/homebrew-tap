class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.74.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.74.0/multica-cli-1.74.0-darwin-arm64.tar.gz"
      sha256 "dbde3e047b9df44a485d8f6d87ba94fbe9f64e893ea11010db4cf7bae020061f"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.74.0/multica-cli-1.74.0-darwin-amd64.tar.gz"
      sha256 "887a5644fdbfa65ee89cb4136e5a5da2cf2b9a20ab7e4d46a77774047a102f56"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.74.0/multica-cli-1.74.0-linux-amd64.tar.gz"
      sha256 "dc9b736aa2701710077160b343f840d64dbed90224c9ecbf69a3025b893d16ea"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.74.0/multica-cli-1.74.0-linux-arm64.tar.gz"
      sha256 "a07874fac019d19e692d85c15ad9ea9c4f6911551f1f21c39065881435ee401f"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
