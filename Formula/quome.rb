class Quome < Formula
  desc "CLI for the Quome platform"
  homepage "https://github.com/quome-cloud/quome-cli"
  version "0.2.43"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.43/quome-darwin-arm64.tar.gz"
      sha256 "23c96328a7a468d78c4a2cdbb8971bdb3b1ca17c78efad132bc34e0a31579679"
    end
    on_intel do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.43/quome-darwin-x64.tar.gz"
      sha256 "f6c8befdec19014fe2ba3aed2fe2d030c2a5e252d3f8b2cc03a12d5ed01325d9"
    end
  end

  def install
    bin.install "quome"
  end

  test do
    assert_match "quome", shell_output("#{bin}/quome --version")
  end
end
