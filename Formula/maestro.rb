class Maestro < Formula
  desc "Multi-session Claude Code orchestrator with Matrix-style TUI"
  homepage "https://github.com/CarlosDanielDev/maestro"
  license "MIT"
  version "0.31.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.31.4/maestro-v0.31.4-aarch64-apple-darwin.tar.gz"
      sha256 "f9ae35440773e7cab7e0ff2b2192d543fc67757b3c88adaecc3283a3f0e99841"
    else
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.31.4/maestro-v0.31.4-x86_64-apple-darwin.tar.gz"
      sha256 "d2a4a4fa27e54c5f07f41e53e6cf19f4fa3238effa9abc7b5b241b545267d4aa"
    end
  end

  on_linux do
    url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.31.4/maestro-v0.31.4-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "d1aa6b6860bb70b5747bfab38cc8f6e859968c78059c34cad87fc68bb43bbd6c"
  end

  def install
    bin.install "maestro"
  end

  test do
    assert_match "maestro", shell_output("#{bin}/maestro --help")
  end
end
