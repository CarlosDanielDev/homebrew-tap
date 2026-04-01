class Maestro < Formula
  desc "Multi-session Claude Code orchestrator with Matrix-style TUI"
  homepage "https://github.com/CarlosDanielDev/maestro"
  url "https://github.com/CarlosDanielDev/maestro/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "8c2c4789b7be688992e17ec1ad7ab7ac4a946ab50816d5e698c2172e5b6786e2"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "maestro", shell_output("#{bin}/maestro --help")
  end
end
