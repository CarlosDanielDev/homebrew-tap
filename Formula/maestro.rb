class Maestro < Formula
  desc "Multi-session Claude Code orchestrator with Matrix-style TUI"
  homepage "https://github.com/CarlosDanielDev/maestro"
  license "MIT"
  version "0.28.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.28.1/maestro-v0.28.1-aarch64-apple-darwin.tar.gz"
      sha256 "89634b452e98bd13fc6e138fd9b22b19ad2b84ae9f0eb041f2ae845504a410f0"
    else
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.28.1/maestro-v0.28.1-x86_64-apple-darwin.tar.gz"
      sha256 "42af268b9b2ead50ecf39884b78c413087607bdd9a7fb4205e2559dd26da8b6f"
    end
  end

  on_linux do
    url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.28.1/maestro-v0.28.1-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "adcc2ec2d31a697daaa94f2fea7c2c7fe5011add54fc71a485477cb0e7879411"
  end

  def install
    bin.install "maestro"
  end

  test do
    assert_match "maestro", shell_output("#{bin}/maestro --help")
  end
end
