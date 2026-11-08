class Quome < Formula
  desc "CLI for the Quome platform"
  homepage "https://github.com/quome-cloud/quome-cli"
  version "0.2.29"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.29/quome-darwin-arm64.tar.gz"
      sha256 "db2db63d9bd21ab6caab8d1eb45e4acb13bf117c0ec04b85ba8e3a1dde308e31"
    end
    on_intel do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.29/quome-darwin-x64.tar.gz"
      sha256 "713b387a51e62cf606cef1134b6cc44b4e4cb1b3908a7c6db097906d766b2d13"
    end
  end

  def install
    bin.install "quome"
  end

  test do
    assert_match "quome", shell_output("#{bin}/quome --version")
  end
end
