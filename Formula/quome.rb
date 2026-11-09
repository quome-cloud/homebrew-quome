class Quome < Formula
  desc "CLI for the Quome platform"
  homepage "https://github.com/quome-cloud/quome-cli"
  version "0.2.33"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.33/quome-darwin-arm64.tar.gz"
      sha256 "2cedab0d4c7a3802b2dd38f476a771c2b2ffcc802fe40a9a80f3c46746f8c1e1"
    end
    on_intel do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.33/quome-darwin-x64.tar.gz"
      sha256 "abb02b74a7f2e55e04ccef833ca7969690e208d397b4a054c3e88fea082cb75a"
    end
  end

  def install
    bin.install "quome"
  end

  test do
    assert_match "quome", shell_output("#{bin}/quome --version")
  end
end
