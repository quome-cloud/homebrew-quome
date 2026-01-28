class Quome < Formula
  desc "CLI for the Quome platform"
  homepage "https://github.com/quome-cloud/quome-cli"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.1.4/quome-darwin-arm64.tar.gz"
      sha256 "eb4c3ad4e1131bc0165acce5b72cfee18dbbabe392016540dde6cbc7f6b34540"
    end
    on_intel do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.1.4/quome-darwin-x64.tar.gz"
      sha256 "9bef45ef48f70cfb5aaabd3ad875917759cb9e41b8c259a12f3ec24d2b11cc44"
    end
  end

  def install
    bin.install "quome"
  end

  test do
    assert_match "quome", shell_output("#{bin}/quome --version")
  end
end
