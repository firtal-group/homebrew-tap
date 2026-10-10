class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.60.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.60.2/multica-cli-1.60.2-darwin-arm64.tar.gz"
      sha256 "c33bb6f004d83b02784b06365438a2bb87850163d0f03a788f2a76c94d9e344f"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.60.2/multica-cli-1.60.2-darwin-amd64.tar.gz"
      sha256 "0540d50e577f286364f1b6948201d61cf582248913f211fc8362df1472f03f83"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.60.2/multica-cli-1.60.2-linux-amd64.tar.gz"
      sha256 "046c93e31b4e36b6fe8df1ad3dfddf249d8cfab30599e5759f616961fb301efa"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.60.2/multica-cli-1.60.2-linux-arm64.tar.gz"
      sha256 "ed1cb383815709a2e28fd37a924afbdf70374046dcb6563f7fc4d02ea1ee67b4"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
