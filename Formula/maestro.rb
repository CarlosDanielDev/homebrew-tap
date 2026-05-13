class Maestro < Formula
  desc "Multi-session Claude Code orchestrator with Matrix-style TUI"
  homepage "https://github.com/CarlosDanielDev/maestro"
  license "MIT"
  version "0.26.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.26.0/maestro-v0.26.0-aarch64-apple-darwin.tar.gz"
      sha256 "ab025f06e9224396ed6ff7fde2b529bd161f74db7d8787d77d11b50061ec8095"
    else
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.26.0/maestro-v0.26.0-x86_64-apple-darwin.tar.gz"
      sha256 "4d121d5b33a1452a4072c167cbe7491936b299fc3f345eddce5de67f42b10acf"
    end
  end

  on_linux do
    url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.26.0/maestro-v0.26.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "2006682cbfabbe006f94751c77ca9c070a7b9ef8fbf7f608c0919629fe501f15"
  end

  def install
    bin.install "maestro"
  end

  test do
    assert_match "maestro", shell_output("#{bin}/maestro --help")
  end
end
