class Quome < Formula
  desc "CLI for the Quome platform"
  homepage "https://github.com/quome-cloud/quome-cli"
  version "0.2.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.15/quome-darwin-arm64.tar.gz"
      sha256 "71b651e348c0091dcca079915c5d59bfbcee0da070c2c6d2353913ed93de7ed3"
    end
    on_intel do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.15/quome-darwin-x64.tar.gz"
      sha256 "dc55b8606e07a5f63c672b4072341f366e3fecf2496069259385ba69030d92f8"
    end
  end

  def install
    bin.install "quome"
  end

  test do
    assert_match "quome", shell_output("#{bin}/quome --version")
  end
end
