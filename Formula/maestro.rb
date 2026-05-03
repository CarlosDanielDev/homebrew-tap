class Maestro < Formula
  desc "Multi-session Claude Code orchestrator with Matrix-style TUI"
  homepage "https://github.com/CarlosDanielDev/maestro"
  license "MIT"
  version "0.17.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.17.1/maestro-v0.17.1-aarch64-apple-darwin.tar.gz"
      sha256 "5289e209c93ecd97e866ed92a3ac64b5d1c8530cdf7ee82e499991b525b28a6e"
    else
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.17.1/maestro-v0.17.1-x86_64-apple-darwin.tar.gz"
      sha256 "761ba7b02c820d85a4a702daa89a413a6ca0120c93612fcce103385c36389782"
    end
  end

  on_linux do
    url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.17.1/maestro-v0.17.1-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "005557a5e01de649b96787e9d2cafdfeb2816ae74d6eef57011c32558ba58f77"
  end

  def install
    bin.install "maestro"
  end

  test do
    assert_match "maestro", shell_output("#{bin}/maestro --help")
  end
end
