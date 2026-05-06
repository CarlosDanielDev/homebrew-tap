class Maestro < Formula
  desc "Multi-session Claude Code orchestrator with Matrix-style TUI"
  homepage "https://github.com/CarlosDanielDev/maestro"
  license "MIT"
  version "0.25.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.25.1/maestro-v0.25.1-aarch64-apple-darwin.tar.gz"
      sha256 "f58eed4b0098ed5930fb52fecdc1f29631d87a26aa1ab161759c5c540947f06b"
    else
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.25.1/maestro-v0.25.1-x86_64-apple-darwin.tar.gz"
      sha256 "5831aa2b0282b9770923d2be31282580968eb035bada44f23ba7bd7371b54220"
    end
  end

  on_linux do
    url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.25.1/maestro-v0.25.1-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "419508f171518924b0fc664b1730d3228fc117eeb9d7729b776d33abec15f4ea"
  end

  def install
    bin.install "maestro"
  end

  test do
    assert_match "maestro", shell_output("#{bin}/maestro --help")
  end
end
