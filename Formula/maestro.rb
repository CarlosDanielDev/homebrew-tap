class Maestro < Formula
  desc "Multi-session Claude Code orchestrator with Matrix-style TUI"
  homepage "https://github.com/CarlosDanielDev/maestro"
  license "MIT"
  version "0.5.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.5.1/maestro-v0.5.1-aarch64-apple-darwin.tar.gz"
      sha256 "2f2dca23592d97433089e67a74746a03fd28b1a98658f11f658f744970721dc9"
    else
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.5.1/maestro-v0.5.1-x86_64-apple-darwin.tar.gz"
      sha256 "2bba2e41d9fcb6ad3359f4cad1aa3282b3d522feaedc6204f4bc18505bf773f2"
    end
  end

  on_linux do
    url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.5.1/maestro-v0.5.1-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "a8e017f5fd4cb4d90d9c2fd2e2e758ccde36346265e11b817e34938e5cda5b91"
  end

  def install
    bin.install "maestro"
  end

  test do
    assert_match "maestro", shell_output("#{bin}/maestro --help")
  end
end
