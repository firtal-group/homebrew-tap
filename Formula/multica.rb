class Multica < Formula
  desc "Multica CLI — local agent runtime with interactive terminal (Firtal build)"
  homepage "https://github.com/firtal-group/firtal-cerebro"
  version "1.64.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.64.3/multica-cli-1.64.3-darwin-arm64.tar.gz"
      sha256 "6bd5f587475d8d326fbca6370f1987e4be3c9e11a194c9d9d6646b070f76f4b5"
    end
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.64.3/multica-cli-1.64.3-darwin-amd64.tar.gz"
      sha256 "20c981f9b92cde3a92c404bbcf42998725beeb3a6bc48da0df2bdd7faa291bc3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.64.3/multica-cli-1.64.3-linux-amd64.tar.gz"
      sha256 "935b3857d3853ff4ba37a4ff7a3f6318d38796c8251e1591f433490f26adadd2"
    end
    on_arm do
      url "https://github.com/firtal-group/homebrew-tap/releases/download/v1.64.3/multica-cli-1.64.3-linux-arm64.tar.gz"
      sha256 "6eb791590a1a81f87dd72f97583252804f0e4dba753930ba8882549ca3ef4dd2"
    end
  end

  def install
    bin.install "multica"
  end

  test do
    system "#{bin}/multica", "version"
  end
end
