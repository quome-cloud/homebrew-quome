class Quome < Formula
  desc "CLI for the Quome platform"
  homepage "https://github.com/quome-cloud/quome-cli"
  version "0.2.27"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.27/quome-darwin-arm64.tar.gz"
      sha256 "d486368f3d2020ed61bf79c015b42ed869a010872bae0011cd6824664eabc4eb"
    end
    on_intel do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.27/quome-darwin-x64.tar.gz"
      sha256 "3451768ab649c37330fade0fc4c6b54a2ed9435c03325e697e2f48d6c8ba0198"
    end
  end

  def install
    bin.install "quome"
  end

  test do
    assert_match "quome", shell_output("#{bin}/quome --version")
  end
end
