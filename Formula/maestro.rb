class Maestro < Formula
  desc "Multi-session Claude Code orchestrator with Matrix-style TUI"
  homepage "https://github.com/CarlosDanielDev/maestro"
  license "MIT"
  version "0.18.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.18.0/maestro-v0.18.0-aarch64-apple-darwin.tar.gz"
      sha256 "67e414f34d1942c417cf58816960cd0a2fe571deb4fe045509fd011d463c11d4"
    else
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.18.0/maestro-v0.18.0-x86_64-apple-darwin.tar.gz"
      sha256 "06bf1a90eccc845b87ece5572e36a787f5388c3de9143ac32304f1b1ce1b7733"
    end
  end

  on_linux do
    url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.18.0/maestro-v0.18.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "eacab8582ac45a1dcbc622147f008e2ff6ca41423a76de39ccfedfa21e448998"
  end

  def install
    bin.install "maestro"
  end

  test do
    assert_match "maestro", shell_output("#{bin}/maestro --help")
  end
end
