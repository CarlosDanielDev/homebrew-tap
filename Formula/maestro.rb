class Maestro < Formula
  desc "Multi-session Claude Code orchestrator with Matrix-style TUI"
  homepage "https://github.com/CarlosDanielDev/maestro"
  license "MIT"
  version "0.9.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.9.0/maestro-v0.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "b2c62fec3219cb08a3d17500640af5f62912a1f440b0a1c5954a5ddc7116cafe"
    else
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.9.0/maestro-v0.9.0-x86_64-apple-darwin.tar.gz"
      sha256 "4cbed8502736b1177b668d4bcee1049210c9578272fdfffa4999d6e6f2e1b3ab"
    end
  end

  on_linux do
    url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.9.0/maestro-v0.9.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "ff35ae6af0f0977c7fa5710cbde47594e5045c6e264d9eff7245e6a4075f989d"
  end

  def install
    bin.install "maestro"
  end

  test do
    assert_match "maestro", shell_output("#{bin}/maestro --help")
  end
end
