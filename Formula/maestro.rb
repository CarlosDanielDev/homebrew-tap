class Maestro < Formula
  desc "Multi-session Claude Code orchestrator with Matrix-style TUI"
  homepage "https://github.com/CarlosDanielDev/maestro"
  license "MIT"
  version "0.10.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.10.1/maestro-v0.10.1-aarch64-apple-darwin.tar.gz"
      sha256 "6fa059501dca4e7fc16ff6c32461c850a6fe90cea930c0f34a5f401bcc8fbed1"
    else
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.10.1/maestro-v0.10.1-x86_64-apple-darwin.tar.gz"
      sha256 "f12cb92a77ce54c40a4de0f3ba5168d12f3061e70916b4b4316db6811319691d"
    end
  end

  on_linux do
    url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.10.1/maestro-v0.10.1-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "d9131b204e666a5a61fd21419b8ce4c5b1e15833d39bc41f5d770de90eb15224"
  end

  def install
    bin.install "maestro"
  end

  test do
    assert_match "maestro", shell_output("#{bin}/maestro --help")
  end
end
