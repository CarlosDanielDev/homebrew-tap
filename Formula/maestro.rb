class Maestro < Formula
  desc "Multi-session Claude Code orchestrator with Matrix-style TUI"
  homepage "https://github.com/CarlosDanielDev/maestro"
  license "MIT"
  version "0.24.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.24.0/maestro-v0.24.0-aarch64-apple-darwin.tar.gz"
      sha256 "5cacf0ab70bf78fa67d7a514aa7b1cc115c10c94ccb4e3f9ba07e4174751fc6e"
    else
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.24.0/maestro-v0.24.0-x86_64-apple-darwin.tar.gz"
      sha256 "38dfb53a9150839717f4e2f520159200a1083c36b9f3e884df23e8368194e173"
    end
  end

  on_linux do
    url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.24.0/maestro-v0.24.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "3d0954eb910542427259068f3964d1ab35e3847a8968cc7b4d73c6ae0c21d522"
  end

  def install
    bin.install "maestro"
  end

  test do
    assert_match "maestro", shell_output("#{bin}/maestro --help")
  end
end
