class Quome < Formula
  desc "CLI for the Quome platform"
  homepage "https://github.com/quome-cloud/quome-cli"
  version "0.2.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.11/quome-darwin-arm64.tar.gz"
      sha256 "1a47b2263cd225ffbff2930d3bb89984c70e73f70aca6f1d7b8118e99b2f730e"
    end
    on_intel do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.11/quome-darwin-x64.tar.gz"
      sha256 "44a379cd2934201844ef6e7e27b9954c162b1477ec11244e6d7231984126391d"
    end
  end

  def install
    bin.install "quome"
  end

  test do
    assert_match "quome", shell_output("#{bin}/quome --version")
  end
end
