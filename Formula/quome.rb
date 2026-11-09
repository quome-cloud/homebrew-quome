class Quome < Formula
  desc "CLI for the Quome platform"
  homepage "https://github.com/quome-cloud/quome-cli"
  version "0.2.35"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.35/quome-darwin-arm64.tar.gz"
      sha256 "d8a7a0ef21c35ab5dd5e32b2e8be7c30f44c5a993f7d2fb2420916546b594689"
    end
    on_intel do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.35/quome-darwin-x64.tar.gz"
      sha256 "0d64602ae0818b881db5671116e9b22e4de7961f6bda9eaf3db4bf1a39447585"
    end
  end

  def install
    bin.install "quome"
  end

  test do
    assert_match "quome", shell_output("#{bin}/quome --version")
  end
end
