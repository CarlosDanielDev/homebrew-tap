class Maestro < Formula
  desc "Multi-session Claude Code orchestrator with Matrix-style TUI"
  homepage "https://github.com/CarlosDanielDev/maestro"
  license "MIT"
  version "0.5.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.5.0/maestro-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "c173dab1021336e194bf313eff544d32db71020c27748aa2e54a42f2d5000bd9"
    else
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.5.0/maestro-v0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "d0a514dee70db7da63cbcca978a6c6744a686866bdd965f39a9cc11bcd71a847"
    end
  end

  on_linux do
    url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.5.0/maestro-v0.5.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "9f48e5c78d822de1370b9ebe1b1bae0aac8504b021b5b16e8b500d2645fa01d5"
  end

  def install
    bin.install "maestro"
  end

  test do
    assert_match "maestro", shell_output("#{bin}/maestro --help")
  end
end
