class Quome < Formula
  desc "CLI for the Quome platform"
  homepage "https://github.com/quome-cloud/quome-cli"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.1.6/quome-darwin-arm64.tar.gz"
      sha256 "0c0a725346fa8392672e418f06fd5833725aa65f325c544e7686bc17dea4ab30"
    end
    on_intel do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.1.6/quome-darwin-x64.tar.gz"
      sha256 "cd13b2312a84eb6a2165a8ed64034c93e233cc936ab9ded5fa8412987dadcea2"
    end
  end

  def install
    bin.install "quome"
  end

  test do
    assert_match "quome", shell_output("#{bin}/quome --version")
  end
end
