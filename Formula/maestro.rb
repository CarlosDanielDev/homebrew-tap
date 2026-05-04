class Maestro < Formula
  desc "Multi-session Claude Code orchestrator with Matrix-style TUI"
  homepage "https://github.com/CarlosDanielDev/maestro"
  license "MIT"
  version "0.22.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.22.0/maestro-v0.22.0-aarch64-apple-darwin.tar.gz"
      sha256 "ca8253cc5821a45be0c3d5eaebb685731e11c978fb4c17c1baf3db537af46b34"
    else
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.22.0/maestro-v0.22.0-x86_64-apple-darwin.tar.gz"
      sha256 "8e0095a344a5aecdd814cf2215013bd9775c292c689ecbc3d3f887f7a1c0cf53"
    end
  end

  on_linux do
    url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.22.0/maestro-v0.22.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "0d104269819c0880b0882b00c7084589a3d4238ce45c6e1f27d3d644df6b0d94"
  end

  def install
    bin.install "maestro"
  end

  test do
    assert_match "maestro", shell_output("#{bin}/maestro --help")
  end
end
