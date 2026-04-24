class Maestro < Formula
  desc "Multi-session Claude Code orchestrator with Matrix-style TUI"
  homepage "https://github.com/CarlosDanielDev/maestro"
  license "MIT"
  version "0.15.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.15.1/maestro-v0.15.1-aarch64-apple-darwin.tar.gz"
      sha256 "407ff01df297fb878243e22daf2f6cd0a416cd45ba1aba0a9039ca14a8ded09c"
    else
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.15.1/maestro-v0.15.1-x86_64-apple-darwin.tar.gz"
      sha256 "7416e620bb67486842186b12b4acef6ffa0c2b0101f9cde2eea5cbb804e7c540"
    end
  end

  on_linux do
    url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.15.1/maestro-v0.15.1-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "677020d1bc28f14a6ae2914e1a656460be8c4145cc540a591b275ccf3a70a002"
  end

  def install
    bin.install "maestro"
  end

  test do
    assert_match "maestro", shell_output("#{bin}/maestro --help")
  end
end
