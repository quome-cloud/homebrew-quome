class Quome < Formula
  desc "CLI for the Quome platform"
  homepage "https://github.com/quome-cloud/quome-cli"
  version "0.2.49"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.49/quome-darwin-arm64.tar.gz"
      sha256 "492e512dafaa1fe8f29a5cdd02ff7bb4a40ea99429d7457f9ebe65d8a111933d"
    end
    on_intel do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.49/quome-darwin-x64.tar.gz"
      sha256 "d4a5714856a5f643ef8521891e2244605448f084ef0704a45e8b945713f8532c"
    end
  end

  def install
    bin.install "quome"
  end

  test do
    assert_match "quome", shell_output("#{bin}/quome --version")
  end
end
