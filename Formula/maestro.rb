class Maestro < Formula
  desc "Multi-session Claude Code orchestrator with Matrix-style TUI"
  homepage "https://github.com/CarlosDanielDev/maestro"
  license "MIT"
  version "0.7.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.7.0/maestro-v0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "f5f91e6582353f63e25cda6a256d0e8cab77d208615fe1778dc5e24e2a21e452"
    else
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.7.0/maestro-v0.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "5f3952641126ca724d3c659715f92c5db4c72b56c11a48e46dac68b11200956a"
    end
  end

  on_linux do
    url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.7.0/maestro-v0.7.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "d21028c0b94181de06051781ee6705f98b28a9c895a3c674fa78d93f7b908c90"
  end

  def install
    bin.install "maestro"
  end

  test do
    assert_match "maestro", shell_output("#{bin}/maestro --help")
  end
end
