class Quome < Formula
  desc "CLI for the Quome platform"
  homepage "https://github.com/quome-cloud/quome-cli"
  version "0.2.47"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.47/quome-darwin-arm64.tar.gz"
      sha256 "c119c14be46238b07201316bb991010e51917d92b414695c4abd8d77562f69fc"
    end
    on_intel do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.47/quome-darwin-x64.tar.gz"
      sha256 "7d5f135f0fa65ea8801e4062c308de07fa5d87ef2d6f8b6fc220ed5ada33ce69"
    end
  end

  def install
    bin.install "quome"
  end

  test do
    assert_match "quome", shell_output("#{bin}/quome --version")
  end
end
