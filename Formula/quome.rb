class Quome < Formula
  desc "CLI for the Quome platform"
  homepage "https://github.com/quome-cloud/quome-cli"
  version "0.2.53"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.53/quome-darwin-arm64.tar.gz"
      sha256 "0378fdbfe6bb50404580184f7c575b3db0fccae4e5cc8a1d4de4d63dbefb1113"
    end
    on_intel do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.53/quome-darwin-x64.tar.gz"
      sha256 "41ba44fc26deb64cf092709f60a26569b95f680724a9c73bc03344dac86347ab"
    end
  end

  def install
    bin.install "quome"
  end

  test do
    assert_match "quome", shell_output("#{bin}/quome --version")
  end
end
