class Quome < Formula
  desc "CLI for the Quome platform"
  homepage "https://github.com/quome-cloud/quome-cli"
  version "0.2.30"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.30/quome-darwin-arm64.tar.gz"
      sha256 "890775d639a859bc665d5d66886fde1ec2f4dfa2526572257f1a5be0da105384"
    end
    on_intel do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.30/quome-darwin-x64.tar.gz"
      sha256 "088b35f42322c7ddcce65316ddc6b4f8a85eda9c92272118b8ee1d9bd9ed7ede"
    end
  end

  def install
    bin.install "quome"
  end

  test do
    assert_match "quome", shell_output("#{bin}/quome --version")
  end
end
