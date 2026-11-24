class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.106.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.106.0/multica-cli-1.106.0-darwin-arm64.tar.gz"
      sha256 "4649deca142ea95a8e237e2b6c361389fc4c433420f4790c87963ac1082f74b1"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.106.0/multica-cli-1.106.0-darwin-amd64.tar.gz"
      sha256 "32335be03f39c331fc4a83748dc85ac3e46b443d10e59b95182fd16610edf99a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.106.0/multica-cli-1.106.0-linux-amd64.tar.gz"
      sha256 "4abfe0496302e92a4c65d48f2a1febad0ba490eb2ee2f4d0e9dab5ffafe630b2"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.106.0/multica-cli-1.106.0-linux-arm64.tar.gz"
      sha256 "2d3221e3108e54356e02b7f9745e6dfd0cca0f121cf71c2ac6b6126b70f643a6"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
