class Quome < Formula
  desc "CLI for the Quome platform"
  homepage "https://github.com/quome-cloud/quome-cli"
  version "0.2.32"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.32/quome-darwin-arm64.tar.gz"
      sha256 "4fca11daccf72f47090c6709d2d48832c8cb126c6b082ae427454c38f3f133b9"
    end
    on_intel do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.32/quome-darwin-x64.tar.gz"
      sha256 "e75fefd0e8922266aa321cc7eb30a4ae85f1e6c43ca85ad4cd38a31ea4238915"
    end
  end

  def install
    bin.install "quome"
  end

  test do
    assert_match "quome", shell_output("#{bin}/quome --version")
  end
end
