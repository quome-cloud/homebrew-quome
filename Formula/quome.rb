class Quome < Formula
  desc "CLI for the Quome platform"
  homepage "https://github.com/quome-cloud/quome-cli"
  version "0.2.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.9/quome-darwin-arm64.tar.gz"
      sha256 "50a64fb3ce69e1164745c33e26d8895ab04418dcd5e82960c81a82dd74231135"
    end
    on_intel do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.9/quome-darwin-x64.tar.gz"
      sha256 "fec2034f57fd0d088cbdf5c33f3ed1ea67676cc723212b25620c15adec220302"
    end
  end

  def install
    bin.install "quome"
  end

  test do
    assert_match "quome", shell_output("#{bin}/quome --version")
  end
end
