class Quome < Formula
  desc "CLI for the Quome platform"
  homepage "https://github.com/quome-cloud/quome-cli"
  version "0.2.48"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.48/quome-darwin-arm64.tar.gz"
      sha256 "06b519c0da0ed5ffaa55d8ac9c830cc067d2f49b6b730443cce84231ba4ec7d6"
    end
    on_intel do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.48/quome-darwin-x64.tar.gz"
      sha256 "3d9af5619b06fa9a3e087c676a20905c3d2ad39cf5832d4084a94f68c61f1299"
    end
  end

  def install
    bin.install "quome"
  end

  test do
    assert_match "quome", shell_output("#{bin}/quome --version")
  end
end
