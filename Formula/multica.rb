class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.70.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.70.0/multica-cli-1.70.0-darwin-arm64.tar.gz"
      sha256 "5e11548d18b47191ef0b246f93956cdf2bfb263406e1b364c3ba3369280dfc81"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.70.0/multica-cli-1.70.0-darwin-amd64.tar.gz"
      sha256 "f240e00d5a775096ad4a3377d3ccb5568aec168bc00fab69367fff343c77e589"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.70.0/multica-cli-1.70.0-linux-amd64.tar.gz"
      sha256 "5beab9176fbc24a4cde9cb3ae30c1e486cddf1604dfd385eaac8b7034064f8ec"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.70.0/multica-cli-1.70.0-linux-arm64.tar.gz"
      sha256 "a7f8b3f1be422f03c2fee892f23b7891ff45c2e030bd4183693d2899071b29dd"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
