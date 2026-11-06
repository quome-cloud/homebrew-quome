class Quome < Formula
  desc "CLI for the Quome platform"
  homepage "https://github.com/quome-cloud/quome-cli"
  version "0.2.21"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.21/quome-darwin-arm64.tar.gz"
      sha256 "5c45233622bed85d170028da94e90b13595a5d466d162f488c62385090f5560b"
    end
    on_intel do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.21/quome-darwin-x64.tar.gz"
      sha256 "c600d0eecd5d11cca1d38fad2824e4f56a2f0571c71df735b1420e4d8b11e53b"
    end
  end

  def install
    bin.install "quome"
  end

  test do
    assert_match "quome", shell_output("#{bin}/quome --version")
  end
end
