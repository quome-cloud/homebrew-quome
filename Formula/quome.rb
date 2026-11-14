class Quome < Formula
  desc "CLI for the Quome platform"
  homepage "https://github.com/quome-cloud/quome-cli"
  version "0.2.44"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.44/quome-darwin-arm64.tar.gz"
      sha256 "0e9fde2dc322a79e6cf0e094474ff10cc703517bcbc715974078c31b73898255"
    end
    on_intel do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.44/quome-darwin-x64.tar.gz"
      sha256 "caaf779d6170064f92a2b50161ae7ce5a31d648b10e03b63e35d653b31ccdda9"
    end
  end

  def install
    bin.install "quome"
  end

  test do
    assert_match "quome", shell_output("#{bin}/quome --version")
  end
end
