class Quome < Formula
  desc "CLI for the Quome platform"
  homepage "https://github.com/quome-cloud/quome-cli"
  version "0.2.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.14/quome-darwin-arm64.tar.gz"
      sha256 "1414f0c149f63f04b823715176129b09ade41914579835a199a9f0ebff555d0f"
    end
    on_intel do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.14/quome-darwin-x64.tar.gz"
      sha256 "55a9d6aa7f4bc8c668b9705a7eb239fa0b27e07079996230ac881366afcdcb96"
    end
  end

  def install
    bin.install "quome"
  end

  test do
    assert_match "quome", shell_output("#{bin}/quome --version")
  end
end
