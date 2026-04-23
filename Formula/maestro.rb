class Maestro < Formula
  desc "Multi-session Claude Code orchestrator with Matrix-style TUI"
  homepage "https://github.com/CarlosDanielDev/maestro"
  license "MIT"
  version "0.14.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.14.1/maestro-v0.14.1-aarch64-apple-darwin.tar.gz"
      sha256 "552e42f407ff2ce96d87ef5ba06e242962a8fae1d9b3f0050d89ceab2468b153"
    else
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.14.1/maestro-v0.14.1-x86_64-apple-darwin.tar.gz"
      sha256 "8cbe6ea97d5c1631cc8d9972781c1c299dd7279bb2a7dd81695d5d778a2eeab6"
    end
  end

  on_linux do
    url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.14.1/maestro-v0.14.1-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "279845b64c83e97ed6e0d3c85efa0ef1f5c00dff4051eedadd6ef36897a421c8"
  end

  def install
    bin.install "maestro"
  end

  test do
    assert_match "maestro", shell_output("#{bin}/maestro --help")
  end
end
