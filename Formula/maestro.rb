class Maestro < Formula
  desc "Multi-session Claude Code orchestrator with Matrix-style TUI"
  homepage "https://github.com/CarlosDanielDev/maestro"
  license "MIT"
  version "0.31.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.31.5/maestro-v0.31.5-aarch64-apple-darwin.tar.gz"
      sha256 "f53eb1da1ee7950ee077548bfc174661068c4cb07e1eeb7716ce63a34a58bc4a"
    else
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.31.5/maestro-v0.31.5-x86_64-apple-darwin.tar.gz"
      sha256 "7d8383518a809df20a5755102125bb055fa0937e6aa86ceccf60d51057ab40af"
    end
  end

  on_linux do
    url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.31.5/maestro-v0.31.5-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "7a0b51b1f967221981b6277cb0edb9ebf8cd61c49206199ac9e6d8157db11815"
  end

  def install
    bin.install "maestro"
  end

  test do
    assert_match "maestro", shell_output("#{bin}/maestro --help")
  end
end
