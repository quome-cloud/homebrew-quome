class Quome < Formula
  desc "CLI for the Quome platform"
  homepage "https://github.com/quome-cloud/quome-cli"
  version "0.2.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.10/quome-darwin-arm64.tar.gz"
      sha256 "3c1f77b2f84b8cee90080dd693e42f142c1cac990f98ace42bfa8a4946bd3da2"
    end
    on_intel do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.10/quome-darwin-x64.tar.gz"
      sha256 "f22a0c7d3aab1f0cb4e2e1142d6e6ece44a61dd9669c53a93da4c2f01075d985"
    end
  end

  def install
    bin.install "quome"
  end

  test do
    assert_match "quome", shell_output("#{bin}/quome --version")
  end
end
