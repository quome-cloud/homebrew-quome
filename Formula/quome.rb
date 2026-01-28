class Quome < Formula
  desc "CLI for the Quome platform"
  homepage "https://github.com/quome-cloud/quome-cli"
  version "0.1.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.1.10/quome-darwin-arm64.tar.gz"
      sha256 "47bb32e6837d6f0eb933ae1fc3122203c60b7a04d26a45a5d752b70da2cf9581"
    end
    on_intel do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.1.10/quome-darwin-x64.tar.gz"
      sha256 "674a526f4ec0f1a708459eb8cc650e9849055b7fbc42227de3d955ed7f0e65df"
    end
  end

  def install
    bin.install "quome"
  end

  test do
    assert_match "quome", shell_output("#{bin}/quome --version")
  end
end
