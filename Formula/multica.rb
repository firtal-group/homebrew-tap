class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.51.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.51.0/multica-cli-1.51.0-darwin-arm64.tar.gz"
      sha256 "b7670dafef70359e3190f2da7f6ed8fe1ef434d5ec16e286c9d9ff7aa52ddf31"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.51.0/multica-cli-1.51.0-darwin-amd64.tar.gz"
      sha256 "311651a109fd199e7f456646d359f721e0bf50dbdd4fb7251e2fc134c95a75a4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.51.0/multica-cli-1.51.0-linux-amd64.tar.gz"
      sha256 "15b11bc850ecbdb6af9c01efc82c346b4e3ec4f0d1fac66ce19b10bfdf8c9d7e"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.51.0/multica-cli-1.51.0-linux-arm64.tar.gz"
      sha256 "c41494347a82370d09d0b355bfe92b0adee9cdbdfbf72e25541983953c40d314"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
