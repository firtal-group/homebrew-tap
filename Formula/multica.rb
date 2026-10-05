class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.58.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.58.2/multica-cli-1.58.2-darwin-arm64.tar.gz"
      sha256 "e9e33d7c066f6e70f0c0a1b1b4ce89016ceeb02199cfdcf01e4359080b61df1a"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.58.2/multica-cli-1.58.2-darwin-amd64.tar.gz"
      sha256 "b6231a0fe44e233e399159b2b8dbca189017287497d312ada02846564535d8b9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.58.2/multica-cli-1.58.2-linux-amd64.tar.gz"
      sha256 "732b3d9a2aa32f27ce45d544852432f769958164905e948263cbfa3305a2394b"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.58.2/multica-cli-1.58.2-linux-arm64.tar.gz"
      sha256 "195ea8cfc1a52b1cb4d4a378fb841fd87745c44e3327ccb33899de1b6dff30f0"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
