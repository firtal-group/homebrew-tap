class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.42.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.42.0/multica-cli-1.42.0-darwin-arm64.tar.gz"
      sha256 "35c555d1b4c7450562fd84c67879aaf73b6e7532634674759a93096a4622384c"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.42.0/multica-cli-1.42.0-darwin-amd64.tar.gz"
      sha256 "de8a9d670fd6a8da199a54501fbfb8fbd64d2f300145d84492e4d8f29012c87d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.42.0/multica-cli-1.42.0-linux-amd64.tar.gz"
      sha256 "e6a0e0ce188951515cd459db972ee302a8d553b29019bdde9a9384f91b076c55"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.42.0/multica-cli-1.42.0-linux-arm64.tar.gz"
      sha256 "8e113895bd1ab61aea369f6cddef8cb51f519da3a1de4a510f2c4f9d1d959009"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
