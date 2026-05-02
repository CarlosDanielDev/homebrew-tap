class Maestro < Formula
  desc "Multi-session Claude Code orchestrator with Matrix-style TUI"
  homepage "https://github.com/CarlosDanielDev/maestro"
  license "MIT"
  version "0.17.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.17.0/maestro-v0.17.0-aarch64-apple-darwin.tar.gz"
      sha256 "2f1c892cadda099e1b07b97df41728be3b7c3ccf5072b166cb75dce994d989d7"
    else
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.17.0/maestro-v0.17.0-x86_64-apple-darwin.tar.gz"
      sha256 "23eb48477bde1d9905b4b0e32ab98cf29a81d1c626e714a88f585c098e6f9b22"
    end
  end

  on_linux do
    url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.17.0/maestro-v0.17.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "0e0da81b513a1afc80286bb38892e4e42f26a4022d3df9557698b23a39642223"
  end

  def install
    bin.install "maestro"
  end

  test do
    assert_match "maestro", shell_output("#{bin}/maestro --help")
  end
end
