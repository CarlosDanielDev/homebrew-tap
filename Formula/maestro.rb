class Maestro < Formula
  desc "Multi-session Claude Code orchestrator with Matrix-style TUI"
  homepage "https://github.com/CarlosDanielDev/maestro"
  license "MIT"
  version "0.14.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.14.0/maestro-v0.14.0-aarch64-apple-darwin.tar.gz"
      sha256 "8a4da1ca15880e5e4b79f400b5080aaf498645d4dd86e09a34a7f1504b22a36d"
    else
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.14.0/maestro-v0.14.0-x86_64-apple-darwin.tar.gz"
      sha256 "60d0a0150a60e3c12c2901dc038f24a9225fd5136934d577451141a76e2f5869"
    end
  end

  on_linux do
    url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.14.0/maestro-v0.14.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "16d32d4004552e54b6e9bbbdd50e51854807e4f1b9fece211b93695207339e60"
  end

  def install
    bin.install "maestro"
  end

  test do
    assert_match "maestro", shell_output("#{bin}/maestro --help")
  end
end
