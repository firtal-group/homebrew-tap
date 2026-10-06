class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.58.7"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.58.7/multica-cli-1.58.7-darwin-arm64.tar.gz"
      sha256 "3b79092f966437abc45a474d72a53c497bf8e7e6df124785f86bf3525abd9914"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.58.7/multica-cli-1.58.7-darwin-amd64.tar.gz"
      sha256 "efa1e2f6b24337004718656ba665604d3c0830268eceb14be5a6e1388313f2a7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.58.7/multica-cli-1.58.7-linux-amd64.tar.gz"
      sha256 "939b62bff3069869e54613723b2272591fb81048aae993afafdc6f02046eac6e"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.58.7/multica-cli-1.58.7-linux-arm64.tar.gz"
      sha256 "ebb7e441305140991be18a42f56a6d6276122237e288dd0f27bc9afd54b2a684"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
