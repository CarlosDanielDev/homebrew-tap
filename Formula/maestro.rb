class Maestro < Formula
  desc "Multi-session Claude Code orchestrator with Matrix-style TUI"
  homepage "https://github.com/CarlosDanielDev/maestro"
  license "MIT"
  version "0.25.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.25.0/maestro-v0.25.0-aarch64-apple-darwin.tar.gz"
      sha256 "db8013215f5267b7092e9c4454685a3d730090623290b77d2a1c2a453dadd31f"
    else
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.25.0/maestro-v0.25.0-x86_64-apple-darwin.tar.gz"
      sha256 "528bdbc685ea1d7be0d69fea86f0a98dc416a5a9cc086bb3b628608e367e5e62"
    end
  end

  on_linux do
    url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.25.0/maestro-v0.25.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "93b92c1ed328febd4b794e4ccc89c9534a0ba20e1415692e8ac16013cc4c6e32"
  end

  def install
    bin.install "maestro"
  end

  test do
    assert_match "maestro", shell_output("#{bin}/maestro --help")
  end
end
