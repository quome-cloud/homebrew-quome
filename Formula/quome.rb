class Quome < Formula
  desc "CLI for the Quome platform"
  homepage "https://github.com/quome-cloud/quome-cli"
  version "0.2.31"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.31/quome-darwin-arm64.tar.gz"
      sha256 "01aced9ed5b808819c26c775e4ee55fed03327a1b57f9c705e04e07e2163cd50"
    end
    on_intel do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.31/quome-darwin-x64.tar.gz"
      sha256 "e2168119cdf0a9349999a353386b029ae334d1e4bfbfdac971b15b86af049a94"
    end
  end

  def install
    bin.install "quome"
  end

  test do
    assert_match "quome", shell_output("#{bin}/quome --version")
  end
end
