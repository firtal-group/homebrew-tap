class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.94.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.94.0/multica-cli-1.94.0-darwin-arm64.tar.gz"
      sha256 "8d857c3a9f3a6afb3b12e07b178f4a1e82f9f5875edc3124428f50345afcf81b"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.94.0/multica-cli-1.94.0-darwin-amd64.tar.gz"
      sha256 "72f178c6540f853c43cb44f78f4ea53f435d83cfd1765378f20c9ec1197af96c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.94.0/multica-cli-1.94.0-linux-amd64.tar.gz"
      sha256 "c03b409b5c95bf41871a8901c79e476b4a0c13647c38562cbd2baa5dec2f4bc6"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.94.0/multica-cli-1.94.0-linux-arm64.tar.gz"
      sha256 "575befad0898837e616d63e0aaaf7f0970a6f596513e728c3d12ed224a1a6ae8"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
