class Maestro < Formula
  desc "Multi-session Claude Code orchestrator with Matrix-style TUI"
  homepage "https://github.com/CarlosDanielDev/maestro"
  license "MIT"
  version "0.31.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.31.3/maestro-v0.31.3-aarch64-apple-darwin.tar.gz"
      sha256 "0bee4943d9caae1a4b80f0602c895b1ec50b2dc2c7390edcf43e86ddb5002088"
    else
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.31.3/maestro-v0.31.3-x86_64-apple-darwin.tar.gz"
      sha256 "785226124576b902763607c13a780f9d6cd523ffe4038607902afaa4de4450a6"
    end
  end

  on_linux do
    url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.31.3/maestro-v0.31.3-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "22178d3e9addb635e083e8d80827bbcbb127b436c97135651e7a59e66b8ec432"
  end

  def install
    bin.install "maestro"
  end

  test do
    assert_match "maestro", shell_output("#{bin}/maestro --help")
  end
end
