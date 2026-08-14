class Maestro < Formula
  desc "Multi-session Claude Code orchestrator with Matrix-style TUI"
  homepage "https://github.com/CarlosDanielDev/maestro"
  license "MIT"
  version "0.31.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.31.2/maestro-v0.31.2-aarch64-apple-darwin.tar.gz"
      sha256 "3934a5602af8db2f741dce599a48c3196f07ebbe48bd5c7627dce21077cd1d0d"
    else
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.31.2/maestro-v0.31.2-x86_64-apple-darwin.tar.gz"
      sha256 "9f9cf1bf4c5fa090edd3d2e861aade4fcaae728b321133f8b01ee3e02c186204"
    end
  end

  on_linux do
    url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.31.2/maestro-v0.31.2-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "c33be006d4c46ad8fa85fea5e74c13d539badb65b5eed8e9ad3de9e977cbabf1"
  end

  def install
    bin.install "maestro"
  end

  test do
    assert_match "maestro", shell_output("#{bin}/maestro --help")
  end
end
