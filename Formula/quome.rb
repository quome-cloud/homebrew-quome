class Quome < Formula
  desc "CLI for the Quome platform"
  homepage "https://github.com/quome-cloud/quome-cli"
  version "0.2.56"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.56/quome-darwin-arm64.tar.gz"
      sha256 "f4e4ca12492a6be635810d073bae6bba5e7157ceb1c8ba1cf0af465c6ad5898e"
    end
    on_intel do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.56/quome-darwin-x64.tar.gz"
      sha256 "7590b1a2a6547f084158c2f1103e18e2eb8697e0c85c2418f9874ff8ed9b0e0b"
    end
  end

  def install
    bin.install "quome"
  end

  test do
    assert_match "quome", shell_output("#{bin}/quome --version")
  end
end
