class Quome < Formula
  desc "CLI for the Quome platform"
  homepage "https://github.com/quome-cloud/quome-cli"
  version "0.2.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.7/quome-darwin-arm64.tar.gz"
      sha256 "e6e170402f033ac51ca5184f2dc79a786093c27223c87bd96aead51f9e4e9139"
    end
    on_intel do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.7/quome-darwin-x64.tar.gz"
      sha256 "fa58b1605b3d1224cd3f18f594e8d9f2f4aefbbb613ac3525fae3c2892451b00"
    end
  end

  def install
    bin.install "quome"
  end

  test do
    assert_match "quome", shell_output("#{bin}/quome --version")
  end
end
