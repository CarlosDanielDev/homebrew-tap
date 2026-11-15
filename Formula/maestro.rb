class Maestro < Formula
  desc "Multi-session Claude Code orchestrator with Matrix-style TUI"
  homepage "https://github.com/CarlosDanielDev/maestro"
  license "MIT"
  version "0.33.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.33.1/maestro-v0.33.1-aarch64-apple-darwin.tar.gz"
      sha256 "0f7df413e8fc850ff921321bde420d57a04a747dcccef5e0f0b1667e6bf4b438"
    else
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.33.1/maestro-v0.33.1-x86_64-apple-darwin.tar.gz"
      sha256 "613222dbd66e2ccd1aafcef0a110840356bbf513967659c5bad386b19ebe4635"
    end
  end

  on_linux do
    url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.33.1/maestro-v0.33.1-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "8ce78ee2ffa341d1b55049f9430f97c6458366192440abb24ff1337a677d48bd"
  end

  def install
    bin.install "maestro"
  end

  test do
    assert_match "maestro", shell_output("#{bin}/maestro --help")
  end
end
