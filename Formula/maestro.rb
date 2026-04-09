class Maestro < Formula
  desc "Multi-session Claude Code orchestrator with Matrix-style TUI"
  homepage "https://github.com/CarlosDanielDev/maestro"
  license "MIT"
  version "0.6.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.6.1/maestro-v0.6.1-aarch64-apple-darwin.tar.gz"
      sha256 "6c355cadb9b03ac32ffba8f7e792af3419936d4c5cfff1c14fecde946ce2671e"
    else
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.6.1/maestro-v0.6.1-x86_64-apple-darwin.tar.gz"
      sha256 "8fc6a99e0ee3cd06c9456948e68bec7c1066a251dfe2e67034490b798a6cddd0"
    end
  end

  on_linux do
    url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.6.1/maestro-v0.6.1-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "a233725dc25baf79ec9c3f9cfef9d08497aab1a443344f2a5acb7a7a70d7a171"
  end

  def install
    bin.install "maestro"
  end

  test do
    assert_match "maestro", shell_output("#{bin}/maestro --help")
  end
end
