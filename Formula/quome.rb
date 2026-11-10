class Quome < Formula
  desc "CLI for the Quome platform"
  homepage "https://github.com/quome-cloud/quome-cli"
  version "0.2.39"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.39/quome-darwin-arm64.tar.gz"
      sha256 "e8e07aa8b15918a95a16b0d055526ad01eaa1fc5a8abe371a3fbd95c1610073f"
    end
    on_intel do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.39/quome-darwin-x64.tar.gz"
      sha256 "be6e79ffbaa1eac7f2d5df8acf6b2aa1a113d11360bbc66bd32486f0af5b1e9c"
    end
  end

  def install
    bin.install "quome"
  end

  test do
    assert_match "quome", shell_output("#{bin}/quome --version")
  end
end
