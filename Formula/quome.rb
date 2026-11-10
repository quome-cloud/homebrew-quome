class Quome < Formula
  desc "CLI for the Quome platform"
  homepage "https://github.com/quome-cloud/quome-cli"
  version "0.2.40"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.40/quome-darwin-arm64.tar.gz"
      sha256 "29cad8707b58a42607677bc314684bf0b38f4df3cde4ee5bb8e269f6bb5f24fb"
    end
    on_intel do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.40/quome-darwin-x64.tar.gz"
      sha256 "aafefc0b410dcceb4e45b788ce470fa9f2c5fe69af76eb4cffd935c762063d4a"
    end
  end

  def install
    bin.install "quome"
  end

  test do
    assert_match "quome", shell_output("#{bin}/quome --version")
  end
end
