class Maestro < Formula
  desc "Multi-session Claude Code orchestrator with Matrix-style TUI"
  homepage "https://github.com/CarlosDanielDev/maestro"
  license "MIT"
  version "0.29.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.29.0/maestro-v0.29.0-aarch64-apple-darwin.tar.gz"
      sha256 "2b7d75ca91e8349d4c6ddaa66a415f507023de94a076847febae8583e6fd097b"
    else
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.29.0/maestro-v0.29.0-x86_64-apple-darwin.tar.gz"
      sha256 "e5149082f005be85cefcdd597de6beed8cf18475be46b840d8812404460728bf"
    end
  end

  on_linux do
    url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.29.0/maestro-v0.29.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "ff2eabea6c9141fba35bef539c3db78b04984474dbeb737af3c1ee009f3be07a"
  end

  def install
    bin.install "maestro"
  end

  test do
    assert_match "maestro", shell_output("#{bin}/maestro --help")
  end
end
