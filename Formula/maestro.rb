class Maestro < Formula
  desc "Multi-session Claude Code orchestrator with Matrix-style TUI"
  homepage "https://github.com/CarlosDanielDev/maestro"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.4.0/maestro-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "d9c3beea247bd8c66ec84090f5a0473564535d090055bb17720b19edb2daa4f6"
    else
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.4.0/maestro-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "3d3a0d89dac767632327a98c88e5c79385ca9935233a1e11952888cd50a10991"
    end
  end

  on_linux do
    url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.4.0/maestro-v0.4.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "79d8db8a65df886bb389d5fb2e72ee3ca685ccb0736ba9d6e7bb0b130f3c38cb"
  end

  def install
    bin.install "maestro"
  end

  test do
    assert_match "maestro", shell_output("#{bin}/maestro --help")
  end
end
