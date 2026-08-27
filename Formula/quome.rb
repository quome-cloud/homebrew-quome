class Quome < Formula
  desc "CLI for the Quome platform"
  homepage "https://github.com/quome-cloud/quome-cli"
  version "0.2.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.3/quome-darwin-arm64.tar.gz"
      sha256 "749301206db71504acf4627413dc8043ac5f9c138ed2a2054f067055450de508"
    end
    on_intel do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.3/quome-darwin-x64.tar.gz"
      sha256 "212e062ddd0b8110c4316f8dd9b76c14fab1b601f9166331b92514da5a6b1a75"
    end
  end

  def install
    bin.install "quome"
  end

  test do
    assert_match "quome", shell_output("#{bin}/quome --version")
  end
end
