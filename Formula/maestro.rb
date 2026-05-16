class Maestro < Formula
  desc "Multi-session Claude Code orchestrator with Matrix-style TUI"
  homepage "https://github.com/CarlosDanielDev/maestro"
  license "MIT"
  version "0.28.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.28.0/maestro-v0.28.0-aarch64-apple-darwin.tar.gz"
      sha256 "41875637a3aff778d75aebf0d885b698c02cdd3243b2ddef98b4b70700e461f7"
    else
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.28.0/maestro-v0.28.0-x86_64-apple-darwin.tar.gz"
      sha256 "70819db70c671869e4483797d9ca73be76ddb96d58475c7ff6c8a95ceaf0feec"
    end
  end

  on_linux do
    url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.28.0/maestro-v0.28.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "2dad81885193b73871ac71263be614054dd7ab4bc05da8f64e501191da03395f"
  end

  def install
    bin.install "maestro"
  end

  test do
    assert_match "maestro", shell_output("#{bin}/maestro --help")
  end
end
