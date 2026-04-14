class Maestro < Formula
  desc "Multi-session Claude Code orchestrator with Matrix-style TUI"
  homepage "https://github.com/CarlosDanielDev/maestro"
  license "MIT"
  version "0.11.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.11.0/maestro-v0.11.0-aarch64-apple-darwin.tar.gz"
      sha256 "472284ba4dbd6367de76bbf79319af5ec39814bbdb2674d4568769637a07c680"
    else
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.11.0/maestro-v0.11.0-x86_64-apple-darwin.tar.gz"
      sha256 "0e227c8b0ba31bcf21a4db645ca3b534a357ed1574c0a6132f46c1539409e915"
    end
  end

  on_linux do
    url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.11.0/maestro-v0.11.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "10dc7b22bd2edffdc9c974ee87d8bbc812f67eeb0eb0b659ba8fd71edfbf32ff"
  end

  def install
    bin.install "maestro"
  end

  test do
    assert_match "maestro", shell_output("#{bin}/maestro --help")
  end
end
