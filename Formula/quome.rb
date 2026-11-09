class Quome < Formula
  desc "CLI for the Quome platform"
  homepage "https://github.com/quome-cloud/quome-cli"
  version "0.2.36"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.36/quome-darwin-arm64.tar.gz"
      sha256 "69eecdbe32120b0691fdb3d946e20555a0db18a0610b42203931cdd825302464"
    end
    on_intel do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.36/quome-darwin-x64.tar.gz"
      sha256 "c492c7606babb77d6861ff03f2d35b7ae499ffb22eeb2b7f976dcd747978257d"
    end
  end

  def install
    bin.install "quome"
  end

  test do
    assert_match "quome", shell_output("#{bin}/quome --version")
  end
end
