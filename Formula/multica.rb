class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.30.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.30.1/multica-cli-1.30.1-darwin-arm64.tar.gz"
      sha256 "b99ae916711da990c5c970d33ae795a06d0a3c6d0233976c78c559d63d9ca881"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.30.1/multica-cli-1.30.1-darwin-amd64.tar.gz"
      sha256 "07797af3a67b2c22d1ff93e77297ba5fbbd5bc88924de5214ae292cf35d9681c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.30.1/multica-cli-1.30.1-linux-amd64.tar.gz"
      sha256 "8789d8203f8898ee5b9a51034adf557d263c77f1b65f3e975003fb0f8b39d61d"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.30.1/multica-cli-1.30.1-linux-arm64.tar.gz"
      sha256 "e0b60c866926aaa78836ffc2719cd9a27fc885ba32ac341b49020dd685addbe7"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
