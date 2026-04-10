class Maestro < Formula
  desc "Multi-session Claude Code orchestrator with Matrix-style TUI"
  homepage "https://github.com/CarlosDanielDev/maestro"
  license "MIT"
  version "0.10.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.10.0/maestro-v0.10.0-aarch64-apple-darwin.tar.gz"
      sha256 "23c4111582906b907e2214336887ffe4a6d4274350b55bb66a48b68db8518493"
    else
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.10.0/maestro-v0.10.0-x86_64-apple-darwin.tar.gz"
      sha256 "b637dd2c253fa5c8d3dd340b7e5bed17b88215222c75ed2c2ef9153b92b34964"
    end
  end

  on_linux do
    url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.10.0/maestro-v0.10.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "45565fd660287c4776672c278a1fb1b08d7721cbb95e4533e422e5a69cd66244"
  end

  def install
    bin.install "maestro"
  end

  test do
    assert_match "maestro", shell_output("#{bin}/maestro --help")
  end
end
