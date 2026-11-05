class Quome < Formula
  desc "CLI for the Quome platform"
  homepage "https://github.com/quome-cloud/quome-cli"
  version "0.2.18"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.18/quome-darwin-arm64.tar.gz"
      sha256 "3668544db66c45ab84f68448eee36557b22b67be62e0a72dc5bfefe64ea4835e"
    end
    on_intel do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.18/quome-darwin-x64.tar.gz"
      sha256 "c2b420a7a0850eae0cbe40032e9be3f426a7e755b1a2a16251d9ab7400873419"
    end
  end

  def install
    bin.install "quome"
  end

  test do
    assert_match "quome", shell_output("#{bin}/quome --version")
  end
end
