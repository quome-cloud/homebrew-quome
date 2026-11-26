class Quome < Formula
  desc "CLI for the Quome platform"
  homepage "https://github.com/quome-cloud/quome-cli"
  version "0.2.57"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.57/quome-darwin-arm64.tar.gz"
      sha256 "54686876b4b28c097bd91eb2c16027b33cfc405131edb582be9152ab1c91bdd3"
    end
    on_intel do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.57/quome-darwin-x64.tar.gz"
      sha256 "8696ac0b67b56fa8b7db9be329e4d17437d154254fe8daec96d06820246a0c8e"
    end
  end

  def install
    bin.install "quome"
  end

  test do
    assert_match "quome", shell_output("#{bin}/quome --version")
  end
end
