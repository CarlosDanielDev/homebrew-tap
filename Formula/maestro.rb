class Maestro < Formula
  desc "Multi-session Claude Code orchestrator with Matrix-style TUI"
  homepage "https://github.com/CarlosDanielDev/maestro"
  license "MIT"
  version "0.12.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.12.0/maestro-v0.12.0-aarch64-apple-darwin.tar.gz"
      sha256 "ef315c497615d4b4b51ae3422ae5b9857b105bcf89ddf40b37076ed99ec78c65"
    else
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.12.0/maestro-v0.12.0-x86_64-apple-darwin.tar.gz"
      sha256 "bfe2f7d936c37ef8bff654116901cca24c5de83ce431386bd7719517f4469111"
    end
  end

  on_linux do
    url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.12.0/maestro-v0.12.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "fc5a7257f3572b4258eaab8b5bd1e81cb5d14ba6145f2548346ad926eee2cc18"
  end

  def install
    bin.install "maestro"
  end

  test do
    assert_match "maestro", shell_output("#{bin}/maestro --help")
  end
end
