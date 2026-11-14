class Maestro < Formula
  desc "Multi-session Claude Code orchestrator with Matrix-style TUI"
  homepage "https://github.com/CarlosDanielDev/maestro"
  license "MIT"
  version "0.31.8"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.31.8/maestro-v0.31.8-aarch64-apple-darwin.tar.gz"
      sha256 "e6b38ba739bd44909f923b81cdcf87625eb111a75cd356e0a5cb4546e8c61721"
    else
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.31.8/maestro-v0.31.8-x86_64-apple-darwin.tar.gz"
      sha256 "490e09320b3fc34c0220ff5d2b95db7b2c48c1fc398711267366c0088c88e280"
    end
  end

  on_linux do
    url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.31.8/maestro-v0.31.8-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "6aa1b9f623bdf67813ca41fbd20d025b39fd6512c536ce0a2faffde0c7529ad0"
  end

  def install
    bin.install "maestro"
  end

  test do
    assert_match "maestro", shell_output("#{bin}/maestro --help")
  end
end
