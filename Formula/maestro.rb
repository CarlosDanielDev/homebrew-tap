class Maestro < Formula
  desc "Multi-session Claude Code orchestrator with Matrix-style TUI"
  homepage "https://github.com/CarlosDanielDev/maestro"
  license "MIT"
  version "0.33.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.33.0/maestro-v0.33.0-aarch64-apple-darwin.tar.gz"
      sha256 "f2d32244bc28dcd24a3ca088159622d79c3940f3451b5b8ef1736ffbae0025ff"
    else
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.33.0/maestro-v0.33.0-x86_64-apple-darwin.tar.gz"
      sha256 "39b020dc6e78a6d128d8274793260645264ad86812baa5a5329628013644e2b8"
    end
  end

  on_linux do
    url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.33.0/maestro-v0.33.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "458b9f2469fdcf3595ec3bfb0280b0c8639c2f9b7ef333b9b4cde5e82a4fa47b"
  end

  def install
    bin.install "maestro"
  end

  test do
    assert_match "maestro", shell_output("#{bin}/maestro --help")
  end
end
