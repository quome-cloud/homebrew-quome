class Quome < Formula
  desc "CLI for the Quome platform"
  homepage "https://github.com/quome-cloud/quome-cli"
  version "0.2.34"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.34/quome-darwin-arm64.tar.gz"
      sha256 "538aa82ede06e94f1e75f7be2176aeeed21ab2d60d6f3ae3f70ffd7f6450c4dd"
    end
    on_intel do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.34/quome-darwin-x64.tar.gz"
      sha256 "d5c4561e72218cd84ffb6cf5ca57d6e17b6e3f358feaf6254dd9073ae36d868f"
    end
  end

  def install
    bin.install "quome"
  end

  test do
    assert_match "quome", shell_output("#{bin}/quome --version")
  end
end
