class Quome < Formula
  desc "CLI for the Quome platform"
  homepage "https://github.com/quome-cloud/quome-cli"
  version "0.2.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.4/quome-darwin-arm64.tar.gz"
      sha256 "992dfd7f3206b8cbec0aa3229393e6888955b1a43e85df506a20a6d9bffdbe42"
    end
    on_intel do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.4/quome-darwin-x64.tar.gz"
      sha256 "c3543a59d8c4ab2f214c4af54b9e1ef57188180918e2545a3afa733c853cf7b8"
    end
  end

  def install
    bin.install "quome"
  end

  test do
    assert_match "quome", shell_output("#{bin}/quome --version")
  end
end
