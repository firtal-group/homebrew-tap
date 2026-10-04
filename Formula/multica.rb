class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.58.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.58.1/multica-cli-1.58.1-darwin-arm64.tar.gz"
      sha256 "f70994162c2688bc69d2dc363724345e22bddd1d96d125311508574a68544a72"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.58.1/multica-cli-1.58.1-darwin-amd64.tar.gz"
      sha256 "617c18e4e421ea445fbe7299b5dc98f9f12b824020ec768261acdb69cbb75d54"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.58.1/multica-cli-1.58.1-linux-amd64.tar.gz"
      sha256 "57c876cfededf0d0237178672dfa77524934660d8b4a86c0aaa8afea2ac1c483"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.58.1/multica-cli-1.58.1-linux-arm64.tar.gz"
      sha256 "30c0d5ce730217e878eafd01c0f23794a16729b4a5b4db7623e5b25a9e4a3bca"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
