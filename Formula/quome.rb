class Quome < Formula
  desc "CLI for the Quome platform"
  homepage "https://github.com/quome-cloud/quome-cli"
  version "0.2.24"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.24/quome-darwin-arm64.tar.gz"
      sha256 "65a1ae4b50759403569164705705546dacf0f212268fe28feb3811761b08402f"
    end
    on_intel do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.24/quome-darwin-x64.tar.gz"
      sha256 "087a4acf06522bcf3ff382bdcc42270d3a46dfba9d9180643fff4f3ef8627672"
    end
  end

  def install
    bin.install "quome"
  end

  test do
    assert_match "quome", shell_output("#{bin}/quome --version")
  end
end
