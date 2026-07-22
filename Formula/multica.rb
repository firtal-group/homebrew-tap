class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.18.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.18.0/multica-cli-1.18.0-darwin-arm64.tar.gz"
      sha256 "008f04041ec92b020ce7d933eb2c68505d2bad74cd6b61f7b1a41bf535b93dab"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.18.0/multica-cli-1.18.0-darwin-amd64.tar.gz"
      sha256 "0a70c6de2da42259bbd2395ce0c6612099354c53843fe86b4628970919480189"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.18.0/multica-cli-1.18.0-linux-amd64.tar.gz"
      sha256 "df3a2a2b5b284eae13871139038f97a118f2e9b6d15c72d892ba22e0c152fa96"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.18.0/multica-cli-1.18.0-linux-arm64.tar.gz"
      sha256 "8e986a30a6cfa83ce6b13c243424664cf379ef7f7e8c9631627abaa8be42ab64"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
