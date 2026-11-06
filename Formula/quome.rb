class Quome < Formula
  desc "CLI for the Quome platform"
  homepage "https://github.com/quome-cloud/quome-cli"
  version "0.2.20"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.20/quome-darwin-arm64.tar.gz"
      sha256 "aba57aa4bfae0b774eef8b63559de7893dd0961199d03fe67f437d63953343c6"
    end
    on_intel do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.20/quome-darwin-x64.tar.gz"
      sha256 "78ee030ca590390d2c9943581850c95ccf4d528eaa1361fd10f4da0e581d583e"
    end
  end

  def install
    bin.install "quome"
  end

  test do
    assert_match "quome", shell_output("#{bin}/quome --version")
  end
end
