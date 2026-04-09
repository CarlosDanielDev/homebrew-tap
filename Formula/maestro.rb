class Maestro < Formula
  desc "Multi-session Claude Code orchestrator with Matrix-style TUI"
  homepage "https://github.com/CarlosDanielDev/maestro"
  license "MIT"
  version "0.6.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.6.0/maestro-v0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "d0f19c147e526148895adb817e9108ef5b61635a53bd27616f89b6cb0f22e3ca"
    else
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.6.0/maestro-v0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "ebef5ba556c0e9c1b1ec332492ba09de5a12fd883f0cd6f73fa7331e4cd382dc"
    end
  end

  on_linux do
    url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.6.0/maestro-v0.6.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "300e34ba47e7036492d0612614c8d9c2d063e365692291f12952f6b236c47d49"
  end

  def install
    bin.install "maestro"
  end

  test do
    assert_match "maestro", shell_output("#{bin}/maestro --help")
  end
end
