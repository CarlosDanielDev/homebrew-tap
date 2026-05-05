class Maestro < Formula
  desc "Multi-session Claude Code orchestrator with Matrix-style TUI"
  homepage "https://github.com/CarlosDanielDev/maestro"
  license "MIT"
  version "0.24.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.24.1/maestro-v0.24.1-aarch64-apple-darwin.tar.gz"
      sha256 "ccff19a87b0545390e9e256d2d722f1ceb484a54e75bff4477621b41a9442a94"
    else
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.24.1/maestro-v0.24.1-x86_64-apple-darwin.tar.gz"
      sha256 "dd2ec7d9de470404d4345f560ce92e528f9bf990b30ba445b2668ec9569e7bcc"
    end
  end

  on_linux do
    url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.24.1/maestro-v0.24.1-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "481071fbf963859aa9d0a1077b017cf78097792a911f4e7584b8f1e9a64460f0"
  end

  def install
    bin.install "maestro"
  end

  test do
    assert_match "maestro", shell_output("#{bin}/maestro --help")
  end
end
