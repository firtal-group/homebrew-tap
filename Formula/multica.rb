class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.59.9"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.59.9/multica-cli-1.59.9-darwin-arm64.tar.gz"
      sha256 "cd2fce179eaa3899811ae5af2c1906a27f3f93e72258a90468cdfeda09fd1191"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.59.9/multica-cli-1.59.9-darwin-amd64.tar.gz"
      sha256 "158aeb5b6d8b3eace2fdc52484941fd7ab78f85969b4b833c2e53d3664bbe4cf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.59.9/multica-cli-1.59.9-linux-amd64.tar.gz"
      sha256 "03982e826bd672936b1a29c87196bccc4896928543b8e181d0c00e053c8edeb6"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.59.9/multica-cli-1.59.9-linux-arm64.tar.gz"
      sha256 "11302814a81665ba6ffcd11a124c8593b486b3b4ce8ac0804dc70c29a1d6643a"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
