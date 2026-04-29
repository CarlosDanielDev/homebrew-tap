class Maestro < Formula
  desc "Multi-session Claude Code orchestrator with Matrix-style TUI"
  homepage "https://github.com/CarlosDanielDev/maestro"
  license "MIT"
  version "0.16.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.16.1/maestro-v0.16.1-aarch64-apple-darwin.tar.gz"
      sha256 "20d73a54c6584d7ee26414f565ef6e1c27d71bca87e21006e015b630ec5c9c31"
    else
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.16.1/maestro-v0.16.1-x86_64-apple-darwin.tar.gz"
      sha256 "1101d0d49fd94d3f5ed6da4cf0c102d9bb73519c24716cb3407db6670e059de6"
    end
  end

  on_linux do
    url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.16.1/maestro-v0.16.1-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "8776f9d2c8366c512d59d95dc11e21529f79a0c71bc978971e0dde06cac93ac7"
  end

  def install
    bin.install "maestro"
  end

  test do
    assert_match "maestro", shell_output("#{bin}/maestro --help")
  end
end
