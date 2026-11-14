class Maestro < Formula
  desc "Multi-session Claude Code orchestrator with Matrix-style TUI"
  homepage "https://github.com/CarlosDanielDev/maestro"
  license "MIT"
  version "0.31.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.31.7/maestro-v0.31.7-aarch64-apple-darwin.tar.gz"
      sha256 "cb75aec368d722bb2ab41f80889b9014e1ff0717e3467746b329fbbe904ecdbc"
    else
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.31.7/maestro-v0.31.7-x86_64-apple-darwin.tar.gz"
      sha256 "237783153a5d607d086600e50d22fc80a005ec3cc864dfc67de7a5df2aa06d05"
    end
  end

  on_linux do
    url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.31.7/maestro-v0.31.7-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "5b0d066d796be2c21acc2df66fe5aa953614e279305606d68fcbe26014245579"
  end

  def install
    bin.install "maestro"
  end

  test do
    assert_match "maestro", shell_output("#{bin}/maestro --help")
  end
end
