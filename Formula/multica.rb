class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.105.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.105.0/multica-cli-1.105.0-darwin-arm64.tar.gz"
      sha256 "3094740f84b82368ff431631efc25aeb0026e53caee569bf502f80dcfaf21f38"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.105.0/multica-cli-1.105.0-darwin-amd64.tar.gz"
      sha256 "40cf3c73645b3e4451e544c5681622538aa623b39cb9e2abb853d2525b80b200"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.105.0/multica-cli-1.105.0-linux-amd64.tar.gz"
      sha256 "c2b256ad43885ed69db3f7086e7e63c7c38937559544a3b333d4ce3d49c984fb"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.105.0/multica-cli-1.105.0-linux-arm64.tar.gz"
      sha256 "9a076c5b257eaa2162cad4928ce937badfa9899266961511c4ba4e8aa4dd85ac"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
