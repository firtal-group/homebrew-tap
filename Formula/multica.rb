class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.77.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.77.0/multica-cli-1.77.0-darwin-arm64.tar.gz"
      sha256 "b7eb0ee2e8b49d5cf01c12a189b63a2d23c579e97b9499558fd6c4a3d9795c83"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.77.0/multica-cli-1.77.0-darwin-amd64.tar.gz"
      sha256 "bb7db9610f535dc9cc996041eef91ecdd832fffb04d7566c4c9aa96440e63984"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.77.0/multica-cli-1.77.0-linux-amd64.tar.gz"
      sha256 "9d3dbe1f878947fa8471f6d8fbc6359ca1e61310284539b5c1c285f943c3d219"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.77.0/multica-cli-1.77.0-linux-arm64.tar.gz"
      sha256 "8baa12df7824622beecf16236daa219ca2874a12c29a7e3031fed882925d0235"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
