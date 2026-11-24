class Quome < Formula
  desc "CLI for the Quome platform"
  homepage "https://github.com/quome-cloud/quome-cli"
  version "0.2.52"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.52/quome-darwin-arm64.tar.gz"
      sha256 "59cfb98c1bb6ebcfd1a3d25f5fdd8671fe4dd04536e22e8f08d06fb4a0a7af8f"
    end
    on_intel do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.52/quome-darwin-x64.tar.gz"
      sha256 "869c6bdb145eb7a88ddf3a69eb5b9cb8d3a7d8aa03965a087c71f8037d71d9c7"
    end
  end

  def install
    bin.install "quome"
  end

  test do
    assert_match "quome", shell_output("#{bin}/quome --version")
  end
end
