class Maestro < Formula
  desc "Multi-session Claude Code orchestrator with Matrix-style TUI"
  homepage "https://github.com/CarlosDanielDev/maestro"
  license "MIT"
  version "0.16.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.16.0/maestro-v0.16.0-aarch64-apple-darwin.tar.gz"
      sha256 "90bd9984497d31f78c6d9915b412fda67bc76fe6f69e19a1c481dcef777d1c08"
    else
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.16.0/maestro-v0.16.0-x86_64-apple-darwin.tar.gz"
      sha256 "893444c23c477e3ca266d014076f655e670c68720ba207056beef53198f2e04c"
    end
  end

  on_linux do
    url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.16.0/maestro-v0.16.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "231e53b50ecf426f61c0007f56f1d3c8d1af1b52976a008108153750888498c0"
  end

  def install
    bin.install "maestro"
  end

  test do
    assert_match "maestro", shell_output("#{bin}/maestro --help")
  end
end
