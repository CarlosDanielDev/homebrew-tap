class Maestro < Formula
  desc "Multi-session Claude Code orchestrator with Matrix-style TUI"
  homepage "https://github.com/CarlosDanielDev/maestro"
  license "MIT"
  version "0.6.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.6.2/maestro-v0.6.2-aarch64-apple-darwin.tar.gz"
      sha256 "98c289cec174fa4235f12c193c87b343de2f0f9d63737e1b9380eb19770a5f74"
    else
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.6.2/maestro-v0.6.2-x86_64-apple-darwin.tar.gz"
      sha256 "bd91f1edebbd087abb5a5522479d47b204e02a5b11c816d4a7a7a1f3a2cba33b"
    end
  end

  on_linux do
    url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.6.2/maestro-v0.6.2-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "e48dc00b3b0e4fcd763edbe2a279f208b82aa7a576ca694dc4095384ca99323d"
  end

  def install
    bin.install "maestro"
  end

  test do
    assert_match "maestro", shell_output("#{bin}/maestro --help")
  end
end
