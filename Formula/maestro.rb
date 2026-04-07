class Maestro < Formula
  desc "Multi-session Claude Code orchestrator with Matrix-style TUI"
  homepage "https://github.com/CarlosDanielDev/maestro"
  license "MIT"
  version "0.5.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.5.2/maestro-v0.5.2-aarch64-apple-darwin.tar.gz"
      sha256 "20ebf49f8fe526e2a5849df94fd9a485797e661502a98ac2f97bf746c93c7e13"
    else
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.5.2/maestro-v0.5.2-x86_64-apple-darwin.tar.gz"
      sha256 "3d8b528c376a82e2ede024018b063ed6a78f23af44e74d649ae87e170b9cbe71"
    end
  end

  on_linux do
    url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.5.2/maestro-v0.5.2-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "16c488fbe23a8d0f7ba0ca9c71ff5eab3b9faad14e7bf610a440beb683d1522d"
  end

  def install
    bin.install "maestro"
  end

  test do
    assert_match "maestro", shell_output("#{bin}/maestro --help")
  end
end
