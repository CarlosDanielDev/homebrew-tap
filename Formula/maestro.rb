class Maestro < Formula
  desc "Multi-session Claude Code orchestrator with Matrix-style TUI"
  homepage "https://github.com/CarlosDanielDev/maestro"
  license "MIT"
  version "0.15.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.15.0/maestro-v0.15.0-aarch64-apple-darwin.tar.gz"
      sha256 "820f8b9bc3f91ef5d12435f6487c87106df73e00a49a703d4cf6f78ad5ebf242"
    else
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.15.0/maestro-v0.15.0-x86_64-apple-darwin.tar.gz"
      sha256 "d71c9e284076839e2e2f09b51cb3eac709a33f7c5caa9869daefe259b889d2a9"
    end
  end

  on_linux do
    url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.15.0/maestro-v0.15.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "08d47643065131dd9e12fef586ce18fef8c271ca374f3f9ef30ea5c2f8cf760c"
  end

  def install
    bin.install "maestro"
  end

  test do
    assert_match "maestro", shell_output("#{bin}/maestro --help")
  end
end
