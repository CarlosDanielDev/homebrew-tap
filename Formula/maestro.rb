class Maestro < Formula
  desc "Multi-session Claude Code orchestrator with Matrix-style TUI"
  homepage "https://github.com/CarlosDanielDev/maestro"
  license "MIT"
  version "0.8.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.8.0/maestro-v0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "2978e3793e85769e581dcf2042237db3fe002449603e633ae0a301e81ca129be"
    else
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.8.0/maestro-v0.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "adc3393ab9b309e3b73cea96ac12ae038c05ab932af6cffeeb33b0e14d63d75a"
    end
  end

  on_linux do
    url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.8.0/maestro-v0.8.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "18aa1e67ff506f665048a56171eb7ca0e8f0307dc74d128966336aa005a75f8a"
  end

  def install
    bin.install "maestro"
  end

  test do
    assert_match "maestro", shell_output("#{bin}/maestro --help")
  end
end
