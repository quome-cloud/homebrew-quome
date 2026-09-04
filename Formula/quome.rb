class Quome < Formula
  desc "CLI for the Quome platform"
  homepage "https://github.com/quome-cloud/quome-cli"
  version "0.2.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.6/quome-darwin-arm64.tar.gz"
      sha256 "e15263047d8b619a3575cca3b81439b902923f326566ebc7866e00a26a676697"
    end
    on_intel do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.6/quome-darwin-x64.tar.gz"
      sha256 "f63d19393a123fe35efb8e7a8cf32d47eac71a9de50e00f41d98f3f6c30d316e"
    end
  end

  def install
    bin.install "quome"
  end

  test do
    assert_match "quome", shell_output("#{bin}/quome --version")
  end
end
