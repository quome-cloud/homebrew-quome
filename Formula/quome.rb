class Quome < Formula
  desc "CLI for the Quome platform"
  homepage "https://github.com/quome-cloud/quome-cli"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.1/quome-darwin-arm64.tar.gz"
      sha256 "38f086fd45aa87f87ad818cbf1963bcd28d013c4c22ad108324800cb809ff47e"
    end
    on_intel do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.1/quome-darwin-x64.tar.gz"
      sha256 "60c0411c8c2041a04fe0f170fe92472b6775225fc5bb142d816cd5f7ae2ef65c"
    end
  end

  def install
    bin.install "quome"
  end

  test do
    assert_match "quome", shell_output("#{bin}/quome --version")
  end
end
