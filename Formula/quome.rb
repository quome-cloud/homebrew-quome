class Quome < Formula
  desc "CLI for the Quome platform"
  homepage "https://github.com/quome-cloud/quome-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.1.0/quome-darwin-arm64.tar.gz"
      sha256 "94cdb6b170ea255e396a2adc231ff52b08f0cb7668e2149f9a442ef67fc9b300"
    end
    on_intel do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.1.0/quome-darwin-x64.tar.gz"
      sha256 "cac9bcea9a0a7a471780780d91830907d2bf112627ad424e4bbf98d577aaffd8"
    end
  end

  def install
    bin.install "quome"
  end

  test do
    assert_match "quome", shell_output("#{bin}/quome --version")
  end
end
