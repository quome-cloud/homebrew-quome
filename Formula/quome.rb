class Quome < Formula
  desc "CLI for the Quome platform"
  homepage "https://github.com/quome-cloud/quome-cli"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.2/quome-darwin-arm64.tar.gz"
      sha256 "7aaa78fbf1f7b58d35c5ce0ffed74cd591b3074588ff32d85843cbdacb68181f"
    end
    on_intel do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.2/quome-darwin-x64.tar.gz"
      sha256 "d7b18dcfdfd1f1f9d888084f069e54267f3d535d7becf0988c447b9ed030f30c"
    end
  end

  def install
    bin.install "quome"
  end

  test do
    assert_match "quome", shell_output("#{bin}/quome --version")
  end
end
