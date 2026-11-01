class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.81.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.81.1/multica-cli-1.81.1-darwin-arm64.tar.gz"
      sha256 "563d18671026ee5acd13ff36ccf0c566f1069828b272749def317dddc634e7f8"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.81.1/multica-cli-1.81.1-darwin-amd64.tar.gz"
      sha256 "fa27442e5f09169b389e9551224ae88f04bbbe5e5412d9c9c55004588f826cc6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.81.1/multica-cli-1.81.1-linux-amd64.tar.gz"
      sha256 "c2c34c9ddc8e079bf4c4e99406006497ffe8a11539658243d91a797a15d4810c"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.81.1/multica-cli-1.81.1-linux-arm64.tar.gz"
      sha256 "97eb1051e1ef5f3a7a7e38b51f5a298111c05da245f7ede183cab0946390b40c"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
