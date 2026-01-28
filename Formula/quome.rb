class Quome < Formula
  desc "CLI for the Quome platform"
  homepage "https://github.com/quome-cloud/quome-cli"
  version "0.1.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.1.7/quome-darwin-arm64.tar.gz"
      sha256 "0c9883b3b4dfc8e6340da5fcfd4bcc6b603117f2125084e4fca9da4033551e2f"
    end
    on_intel do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.1.7/quome-darwin-x64.tar.gz"
      sha256 "cba7c189dbe5c9e6c8712f1877326d9d66cc6ad4a26d231f4a62a68b0225fd44"
    end
  end

  def install
    bin.install "quome"
  end

  test do
    assert_match "quome", shell_output("#{bin}/quome --version")
  end
end
