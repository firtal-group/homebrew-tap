class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.14.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.14.4/multica-cli-1.14.4-darwin-arm64.tar.gz"
      sha256 "fffc08697a1adec715a54d36046705cea6423e9587c94d1b53f6e2f4e0224a77"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.14.4/multica-cli-1.14.4-darwin-amd64.tar.gz"
      sha256 "94c2dfab13d5857a8fe79c83acdf4f3dd2510c8dd05caee81f78c040d824cfda"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.14.4/multica-cli-1.14.4-linux-amd64.tar.gz"
      sha256 "3e0c8b6cc558571c96dc70b004ec812a60fcd95bbb26edc1a76474955fff89cc"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.14.4/multica-cli-1.14.4-linux-arm64.tar.gz"
      sha256 "3b567903066bca46b789e69f35e8f90f63101fd1fd029be6bf65aee92cc78056"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
