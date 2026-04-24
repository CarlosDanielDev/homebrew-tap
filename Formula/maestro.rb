class Maestro < Formula
  desc "Multi-session Claude Code orchestrator with Matrix-style TUI"
  homepage "https://github.com/CarlosDanielDev/maestro"
  license "MIT"
  version "0.15.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.15.2/maestro-v0.15.2-aarch64-apple-darwin.tar.gz"
      sha256 "bcc8fc4776771ef8c2cbdbc908aec4786a945f9d0ab297a9fe39a4e28457ea57"
    else
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.15.2/maestro-v0.15.2-x86_64-apple-darwin.tar.gz"
      sha256 "bba82c3805a86dff02d5df41096106160e37447c70ec3dd848f977dc560c9523"
    end
  end

  on_linux do
    url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.15.2/maestro-v0.15.2-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "b4be840ea7c4c95a1712a510b43319410e4eda1123e664803d57b694acc0ac23"
  end

  def install
    bin.install "maestro"
  end

  test do
    assert_match "maestro", shell_output("#{bin}/maestro --help")
  end
end
