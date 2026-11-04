class Quome < Formula
  desc "CLI for the Quome platform"
  homepage "https://github.com/quome-cloud/quome-cli"
  version "0.2.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.12/quome-darwin-arm64.tar.gz"
      sha256 "c2e2bab4e75ff1bae37c44ec7f9a256a64c7d74799104ccac336fbdc0e205e11"
    end
    on_intel do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.12/quome-darwin-x64.tar.gz"
      sha256 "0d91335b296f0b8801f4d4243403de9d526d468b94c80b4988a8420b9c0cdc12"
    end
  end

  def install
    bin.install "quome"
  end

  test do
    assert_match "quome", shell_output("#{bin}/quome --version")
  end
end
