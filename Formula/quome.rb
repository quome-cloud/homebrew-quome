class Quome < Formula
  desc "CLI for the Quome platform"
  homepage "https://github.com/quome-cloud/quome-cli"
  version "0.2.51"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.51/quome-darwin-arm64.tar.gz"
      sha256 "bc3008ee516644baee6f9e946b69e1f83b58e9697379e5e7a9b6e9e2988877ed"
    end
    on_intel do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.51/quome-darwin-x64.tar.gz"
      sha256 "3d5f8651f7da6304bc13898f89d2b2f742882015a35ef5aa576fcc60f746163f"
    end
  end

  def install
    bin.install "quome"
  end

  test do
    assert_match "quome", shell_output("#{bin}/quome --version")
  end
end
