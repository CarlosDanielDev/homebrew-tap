class Maestro < Formula
  desc "Multi-session Claude Code orchestrator with Matrix-style TUI"
  homepage "https://github.com/CarlosDanielDev/maestro"
  license "MIT"
  version "0.13.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.13.1/maestro-v0.13.1-aarch64-apple-darwin.tar.gz"
      sha256 "e0bfc2e5e2cacb3c0ba13aaed8322350ac33760ffcdcc42891d18dd96c06229b"
    else
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.13.1/maestro-v0.13.1-x86_64-apple-darwin.tar.gz"
      sha256 "cf540cefecb0c987e5d1bcf62be239283356ef82b1557ed4a8c368dc9f4b868a"
    end
  end

  on_linux do
    url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.13.1/maestro-v0.13.1-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "1ffd718fbf620f0df315d48393d70b944713ebe3044220d784e43215d6ce594a"
  end

  def install
    bin.install "maestro"
  end

  test do
    assert_match "maestro", shell_output("#{bin}/maestro --help")
  end
end
