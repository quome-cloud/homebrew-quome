class Quome < Formula
  desc "CLI for the Quome platform"
  homepage "https://github.com/quome-cloud/quome-cli"
  version "0.2.42"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.42/quome-darwin-arm64.tar.gz"
      sha256 "3b0334598aef96857b37106afd313a6cff458da984895f6279a97a880fd4ec13"
    end
    on_intel do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.42/quome-darwin-x64.tar.gz"
      sha256 "cdc7f4d4a072daf4a1a4d66cf5447a8d21d5c64c27558483bd0e204f6d1ced31"
    end
  end

  def install
    bin.install "quome"
  end

  test do
    assert_match "quome", shell_output("#{bin}/quome --version")
  end
end
