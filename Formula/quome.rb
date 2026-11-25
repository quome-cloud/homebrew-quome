class Quome < Formula
  desc "CLI for the Quome platform"
  homepage "https://github.com/quome-cloud/quome-cli"
  version "0.2.55"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.55/quome-darwin-arm64.tar.gz"
      sha256 "54e488ce0f3170205b0618a06fc14420bca7553c40fe4f578430f0e0d1de9a06"
    end
    on_intel do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.55/quome-darwin-x64.tar.gz"
      sha256 "70bc877a4a35b28acbf8a5d9b72615678e207095ae02a19f0827b3ab5ef74c6c"
    end
  end

  def install
    bin.install "quome"
  end

  test do
    assert_match "quome", shell_output("#{bin}/quome --version")
  end
end
