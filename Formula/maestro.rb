class Maestro < Formula
  desc "Multi-session Claude Code orchestrator with Matrix-style TUI"
  homepage "https://github.com/CarlosDanielDev/maestro"
  license "MIT"
  version "0.31.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.31.1/maestro-v0.31.1-aarch64-apple-darwin.tar.gz"
      sha256 "6cc67838daa991a8b388334cb0552b47b4ff908f9349f469c2121a58766feef2"
    else
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.31.1/maestro-v0.31.1-x86_64-apple-darwin.tar.gz"
      sha256 "605837c1418f603b1cf26f876febb434d9510a5f4eeb585f162a26c8ddd38317"
    end
  end

  on_linux do
    url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.31.1/maestro-v0.31.1-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "9bb4e08aae98363eab249444f816d11fb82392109a423a3e3f146abd2a60ad8f"
  end

  def install
    bin.install "maestro"
  end

  test do
    assert_match "maestro", shell_output("#{bin}/maestro --help")
  end
end
