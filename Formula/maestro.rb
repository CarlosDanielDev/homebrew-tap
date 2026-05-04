class Maestro < Formula
  desc "Multi-session Claude Code orchestrator with Matrix-style TUI"
  homepage "https://github.com/CarlosDanielDev/maestro"
  license "MIT"
  version "0.20.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.20.0/maestro-v0.20.0-aarch64-apple-darwin.tar.gz"
      sha256 "881e12ec50763905151ac943590ecc3139b9656c2f1da69332afd4a551008e29"
    else
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.20.0/maestro-v0.20.0-x86_64-apple-darwin.tar.gz"
      sha256 "0579626fbff0953fcbc3125467f86d0e148a93147bbc918430b691bf84b39a05"
    end
  end

  on_linux do
    url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.20.0/maestro-v0.20.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "045d4ecd3b4f95e38caf165762d25843e5ec518ba8aec8ab2be1e083a5d4e9e9"
  end

  def install
    bin.install "maestro"
  end

  test do
    assert_match "maestro", shell_output("#{bin}/maestro --help")
  end
end
