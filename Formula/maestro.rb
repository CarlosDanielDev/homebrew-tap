class Maestro < Formula
  desc "Multi-session Claude Code orchestrator with Matrix-style TUI"
  homepage "https://github.com/CarlosDanielDev/maestro"
  license "MIT"
  version "0.30.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.30.0/maestro-v0.30.0-aarch64-apple-darwin.tar.gz"
      sha256 "ac13eaf94282504a2c69d6180ff8a86cc0a7a26bd508f48081e20d42ab3af6e1"
    else
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.30.0/maestro-v0.30.0-x86_64-apple-darwin.tar.gz"
      sha256 "de3e707c03fa2fd8124cc5413c9a61fdf07c6f7c393bfe4642efd863b83ca865"
    end
  end

  on_linux do
    url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.30.0/maestro-v0.30.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "87a0ad7208538827dcf18d2c74c49416db18999c2c47fa7cf101d95c94cd479e"
  end

  def install
    bin.install "maestro"
  end

  test do
    assert_match "maestro", shell_output("#{bin}/maestro --help")
  end
end
