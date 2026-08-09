class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.24.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.24.4/multica-cli-1.24.4-darwin-arm64.tar.gz"
      sha256 "2bcc23c4525ea3d8d3f056f15e48e17529ad0c52e27d75e6aa777c047eb48702"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.24.4/multica-cli-1.24.4-darwin-amd64.tar.gz"
      sha256 "9b95a0640a982ed5b7717daad12a407591856f4dd533e25d7cff93daf6b96edc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.24.4/multica-cli-1.24.4-linux-amd64.tar.gz"
      sha256 "6c73d6d16a2dcb342bfeacd83f730cda2a5223f09d122cac4ce97b378a9d98d0"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.24.4/multica-cli-1.24.4-linux-arm64.tar.gz"
      sha256 "f2bffbb91797551ba2106a44484adb579e1fb1bc3645b48035c40aab49c16c5c"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
