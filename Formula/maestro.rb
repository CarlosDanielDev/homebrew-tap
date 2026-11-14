class Maestro < Formula
  desc "Multi-session Claude Code orchestrator with Matrix-style TUI"
  homepage "https://github.com/CarlosDanielDev/maestro"
  license "MIT"
  version "0.31.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.31.6/maestro-v0.31.6-aarch64-apple-darwin.tar.gz"
      sha256 "b0c375e89488ed6354a3ba66a2a1b978e109da2dccd1cf5af424508d6dba6ca6"
    else
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.31.6/maestro-v0.31.6-x86_64-apple-darwin.tar.gz"
      sha256 "9b7c78ca8f81dcaa2a1210c695ad9bbe537a6cfe228ededaebeb888147f2341e"
    end
  end

  on_linux do
    url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.31.6/maestro-v0.31.6-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "4f347d7a510f973d38158292b1e9d617125100330a19502e403b521132980478"
  end

  def install
    bin.install "maestro"
  end

  test do
    assert_match "maestro", shell_output("#{bin}/maestro --help")
  end
end
