class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.83.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.83.0/multica-cli-1.83.0-darwin-arm64.tar.gz"
      sha256 "7593ba615d7057da0bd78aefae31ef17e4508a8707730fdea713d85ca98fad84"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.83.0/multica-cli-1.83.0-darwin-amd64.tar.gz"
      sha256 "ca685fac97c5124a9014ccea3c11e95ca441abd20d666fe2b356c24f1a97c17e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.83.0/multica-cli-1.83.0-linux-amd64.tar.gz"
      sha256 "efbb6ee3673956e8a70c2425878695452fc3e2068262a1928d474cff66f2aa79"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.83.0/multica-cli-1.83.0-linux-arm64.tar.gz"
      sha256 "264ca512f183c5575b035634c6f3e042dca2cbad053ddf3e55aeb37f9ced7067"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
