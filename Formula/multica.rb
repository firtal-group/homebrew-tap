class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.64.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.64.2/multica-cli-1.64.2-darwin-arm64.tar.gz"
      sha256 "1f2887c3950cd0e9c424884c5351469b9132ab515094910466b9d23fb98741ff"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.64.2/multica-cli-1.64.2-darwin-amd64.tar.gz"
      sha256 "e42d4ebb2c5f52735c2adeaaba562f1fb60eff381200bb0c3c87f56934684d2b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.64.2/multica-cli-1.64.2-linux-amd64.tar.gz"
      sha256 "d36e27835a7abbec2ae906186f94c216a86fc8d09cc6ed944c048204bcb9f435"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.64.2/multica-cli-1.64.2-linux-arm64.tar.gz"
      sha256 "7ac386e9502f758e6f189418fb8e9b8dc4c7fc66cbb7c55f929310de0340ddc6"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
