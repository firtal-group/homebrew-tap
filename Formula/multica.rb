class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.40.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.40.1/multica-cli-1.40.1-darwin-arm64.tar.gz"
      sha256 "75f1241a77659dd87fd955ffb649f7ac3a6a8292f75cafcad15e7832d0d729b3"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.40.1/multica-cli-1.40.1-darwin-amd64.tar.gz"
      sha256 "04e06c413e76e2c9f9010b0039aebcdb91a635db9328f713c6ca812119b631cc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.40.1/multica-cli-1.40.1-linux-amd64.tar.gz"
      sha256 "95f13b259cb5c36be9b2393c56624ff3f31ab4ff8e949f36fb4f5d08861c7f75"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.40.1/multica-cli-1.40.1-linux-arm64.tar.gz"
      sha256 "631dce5784a77adb505e88a7dbce397f0b50761f370576857c8888e3fea02746"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
