class Quome < Formula
  desc "CLI for the Quome platform"
  homepage "https://github.com/quome-cloud/quome-cli"
  version "0.2.26"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.26/quome-darwin-arm64.tar.gz"
      sha256 "66f4a8906fc5914581a48c1d241fb2201ad6336d23920a87d147d0efa9f24965"
    end
    on_intel do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.26/quome-darwin-x64.tar.gz"
      sha256 "692c849414cabcf96e968076be8eb034c1f83406ca300dcd427e405cd4f81a59"
    end
  end

  def install
    bin.install "quome"
  end

  test do
    assert_match "quome", shell_output("#{bin}/quome --version")
  end
end
