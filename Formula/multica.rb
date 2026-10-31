class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.80.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.80.0/multica-cli-1.80.0-darwin-arm64.tar.gz"
      sha256 "49939c4f74a8137ee7fd89503f509412cff93c8ec378828e2ad5b36f662c97ff"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.80.0/multica-cli-1.80.0-darwin-amd64.tar.gz"
      sha256 "9f17449f92329cbbc3c425059add591d6b9ded16195674dfe9ff70be0b13d30e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.80.0/multica-cli-1.80.0-linux-amd64.tar.gz"
      sha256 "5960c6c5ca1f1ae84439906163e987725d92b8d28b3c6ffb99396c95add72f60"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.80.0/multica-cli-1.80.0-linux-arm64.tar.gz"
      sha256 "8535894cb71be2869f334e4e69629eb8310a343910abdab2760595a87c5fb25f"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
