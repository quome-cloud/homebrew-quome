class Quome < Formula
  desc "CLI for the Quome platform"
  homepage "https://github.com/quome-cloud/quome-cli"
  version "0.2.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.5/quome-darwin-arm64.tar.gz"
      sha256 "140d661b4526365544ff5169a11ea40ddd8b93f6089e48e2c2d016602ed99e82"
    end
    on_intel do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.5/quome-darwin-x64.tar.gz"
      sha256 "d4fc96b629a207434b6529ae981140f1f67f280c927769a94f85480561cf5209"
    end
  end

  def install
    bin.install "quome"
  end

  test do
    assert_match "quome", shell_output("#{bin}/quome --version")
  end
end
