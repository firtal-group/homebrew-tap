class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.62.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.62.0/multica-cli-1.62.0-darwin-arm64.tar.gz"
      sha256 "2313b1bebd4d0c61c0d5387b795929db29ebdcf9c5eb64e799454afd2a6e8184"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.62.0/multica-cli-1.62.0-darwin-amd64.tar.gz"
      sha256 "594c97195d0ecbf617a09745dc926105b935c269f6922c4e5f928a03d3ba53ab"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.62.0/multica-cli-1.62.0-linux-amd64.tar.gz"
      sha256 "c45f61fb96b1427da2bfe39cde60329aed5a513e280c9f7b08b4c49d04555994"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.62.0/multica-cli-1.62.0-linux-arm64.tar.gz"
      sha256 "6affd1ec9a18ec23a9e77f53e5ca50b20c918131d854c961d5cd16a53aa31715"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
