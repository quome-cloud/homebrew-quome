class Quome < Formula
  desc "CLI for the Quome platform"
  homepage "https://github.com/quome-cloud/quome-cli"
  version "0.2.17"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.17/quome-darwin-arm64.tar.gz"
      sha256 "0a9e15838c83dec598bd773794c1dfd414e3d4166ac06205a49c11a5827bec1c"
    end
    on_intel do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.17/quome-darwin-x64.tar.gz"
      sha256 "f4177e8502290c110423fcf5c87b3eb1ca1a9f9d5afd0432bd8a8761f4f35bcf"
    end
  end

  def install
    bin.install "quome"
  end

  test do
    assert_match "quome", shell_output("#{bin}/quome --version")
  end
end
