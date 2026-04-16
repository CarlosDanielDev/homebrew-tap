class Maestro < Formula
  desc "Multi-session Claude Code orchestrator with Matrix-style TUI"
  homepage "https://github.com/CarlosDanielDev/maestro"
  license "MIT"
  version "0.13.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.13.0/maestro-v0.13.0-aarch64-apple-darwin.tar.gz"
      sha256 "4ecdb647338572b7f72d33ee87adb9f2bebc839ce490e59c10b0f4c0b0401ca1"
    else
      url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.13.0/maestro-v0.13.0-x86_64-apple-darwin.tar.gz"
      sha256 "037ff3e52edcaf0b8a7514a592f6151cce722473971365605a8366f728d2ef85"
    end
  end

  on_linux do
    url "https://github.com/CarlosDanielDev/maestro/releases/download/v0.13.0/maestro-v0.13.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "a479c746530d4c50a0410fa83312525b98cb8a65a377a1c55f89d307b6830608"
  end

  def install
    bin.install "maestro"
  end

  test do
    assert_match "maestro", shell_output("#{bin}/maestro --help")
  end
end
