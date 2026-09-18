class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.48.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.48.1/multica-cli-1.48.1-darwin-arm64.tar.gz"
      sha256 "0869b69bc74034a34839d93ecf5e42fd4021d9ced923c56e953a7de9b92399c8"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.48.1/multica-cli-1.48.1-darwin-amd64.tar.gz"
      sha256 "863c573eb3fbf2ebc5df9c94281594cb497ffcd7d10e9f9eaeb3d33843fc5e6c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.48.1/multica-cli-1.48.1-linux-amd64.tar.gz"
      sha256 "635e3e2be87cfee98b5f5eec273acb4cb451fa89fcc7634eb6b3180a1f317d76"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.48.1/multica-cli-1.48.1-linux-arm64.tar.gz"
      sha256 "1c456476246fa62e540218d16f23967beb0b75e71d20eb5a6892eabf03e3fdfa"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
