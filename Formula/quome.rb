class Quome < Formula
  desc "CLI for the Quome platform"
  homepage "https://github.com/quome-cloud/quome-cli"
  version "0.2.23"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.23/quome-darwin-arm64.tar.gz"
      sha256 "2e552ebd81c77110cccfd74a490251c3b522c07ca0d4e49242f56f36fb93dd07"
    end
    on_intel do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.23/quome-darwin-x64.tar.gz"
      sha256 "c45ad125665318fe7b3dcf8328b8e9634842f57034e445fed8961578bec0b7c5"
    end
  end

  def install
    bin.install "quome"
  end

  test do
    assert_match "quome", shell_output("#{bin}/quome --version")
  end
end
