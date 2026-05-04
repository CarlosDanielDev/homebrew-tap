class Maestro < Formula
  desc "Multi-session Claude Code orchestrator with Matrix-style TUI"
  homepage "https://github.com/CarlosDanielDev/maestro"
  license "MIT"
  version "0.23.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.23.0/maestro-v0.23.0-aarch64-apple-darwin.tar.gz"
      sha256 "1b9519d07360d86c4168d913a2b3e5431ee36c1eff0e8089c987402c82477ca2"
    else
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.23.0/maestro-v0.23.0-x86_64-apple-darwin.tar.gz"
      sha256 "ef5b98fe457b4e5e8aafc25b8d066140775702e527fbc1437ad1f78ce89108f0"
    end
  end

  on_linux do
    url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.23.0/maestro-v0.23.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "fcf422af0cafd4b1d8b48d1587a810ca20791f377b697fb7dea5ca9413ab0eb9"
  end

  def install
    bin.install "maestro"
  end

  test do
    assert_match "maestro", shell_output("#{bin}/maestro --help")
  end
end
