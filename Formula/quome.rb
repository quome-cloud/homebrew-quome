class Quome < Formula
  desc "CLI for the Quome platform"
  homepage "https://github.com/quome-cloud/quome-cli"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.1.5/quome-darwin-arm64.tar.gz"
      sha256 "896e0791bbf1f4ec44090eb5d2650a7e124f074deb98016bf89d84571ca66283"
    end
    on_intel do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.1.5/quome-darwin-x64.tar.gz"
      sha256 "adc470e61eb7d52a731968fdf83b8678ac20c56eb1f0576f8a51040097962f90"
    end
  end

  def install
    bin.install "quome"
  end

  test do
    assert_match "quome", shell_output("#{bin}/quome --version")
  end
end
