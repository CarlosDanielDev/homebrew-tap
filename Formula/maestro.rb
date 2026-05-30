class Maestro < Formula
  desc "Multi-session Claude Code orchestrator with Matrix-style TUI"
  homepage "https://github.com/CarlosDanielDev/maestro"
  license "MIT"
  version "0.29.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.29.5/maestro-v0.29.5-aarch64-apple-darwin.tar.gz"
      sha256 "0192c08f83dc6c61e12b96e36893d9e7d744aa8ad03906f362835a3bf1ba20a4"
    else
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.29.5/maestro-v0.29.5-x86_64-apple-darwin.tar.gz"
      sha256 "b5e793965a95f2d277f419f97062803acc6ee54c698600821e2536ed010f7cac"
    end
  end

  on_linux do
    url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.29.5/maestro-v0.29.5-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "54c3c938604d14a1f2dfe00af0c695bcc9b9cbd2b7c9656f789a49a2ba193131"
  end

  def install
    bin.install "maestro"
  end

  test do
    assert_match "maestro", shell_output("#{bin}/maestro --help")
  end
end
