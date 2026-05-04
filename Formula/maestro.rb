class Maestro < Formula
  desc "Multi-session Claude Code orchestrator with Matrix-style TUI"
  homepage "https://github.com/CarlosDanielDev/maestro"
  license "MIT"
  version "0.19.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.19.0/maestro-v0.19.0-aarch64-apple-darwin.tar.gz"
      sha256 "30dec2f698274bfe99c35052676cdfecea781a9735dab44827d19793f037228a"
    else
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.19.0/maestro-v0.19.0-x86_64-apple-darwin.tar.gz"
      sha256 "9d46a8e88fdc5701b66c6079edf80fde9eb685fac0573760674ca18b43a6befc"
    end
  end

  on_linux do
    url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.19.0/maestro-v0.19.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "01ec743a8d441f0f94139ef583f2be9839ba1ca23a1694b1b00681a29de8eb05"
  end

  def install
    bin.install "maestro"
  end

  test do
    assert_match "maestro", shell_output("#{bin}/maestro --help")
  end
end
