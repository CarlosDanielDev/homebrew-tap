class Maestro < Formula
  desc "Multi-session Claude Code orchestrator with Matrix-style TUI"
  homepage "https://github.com/CarlosDanielDev/maestro"
  license "MIT"
  version "0.11.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.11.1/maestro-v0.11.1-aarch64-apple-darwin.tar.gz"
      sha256 "b06a2be5a23a53639b6a9af755f0c8e1299f9ac8ab14a3a5f2339a02ddccd15c"
    else
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.11.1/maestro-v0.11.1-x86_64-apple-darwin.tar.gz"
      sha256 "25f944b4f18d62ec7c04b5c7ea1070626bd44da7927d8e4ff4164d5334f3c89d"
    end
  end

  on_linux do
    url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.11.1/maestro-v0.11.1-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "d7a1902c0400786b5cfcf8af7bf0111fdbeed7aa286769a465e53f91f635ac16"
  end

  def install
    bin.install "maestro"
  end

  test do
    assert_match "maestro", shell_output("#{bin}/maestro --help")
  end
end
