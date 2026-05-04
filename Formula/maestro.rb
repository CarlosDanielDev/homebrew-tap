class Maestro < Formula
  desc "Multi-session Claude Code orchestrator with Matrix-style TUI"
  homepage "https://github.com/CarlosDanielDev/maestro"
  license "MIT"
  version "0.21.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.21.0/maestro-v0.21.0-aarch64-apple-darwin.tar.gz"
      sha256 "7f202150813443a1b7c8f552f1961a98f5f13246afe7304ed5ffc383bcdd3ae8"
    else
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.21.0/maestro-v0.21.0-x86_64-apple-darwin.tar.gz"
      sha256 "f0f5d52b34f73166d5b38c50db66a74108bef3a34cf3f3a58828c39a1e7fe34c"
    end
  end

  on_linux do
    url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.21.0/maestro-v0.21.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "ebc3d4a4e1b2b1d96f726fc0df959c976cb284651b371525d6f15ec53ac4b5e0"
  end

  def install
    bin.install "maestro"
  end

  test do
    assert_match "maestro", shell_output("#{bin}/maestro --help")
  end
end
