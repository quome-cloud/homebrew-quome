class Quome < Formula
  desc "CLI for the Quome platform"
  homepage "https://github.com/quome-cloud/quome-cli"
  version "0.2.45"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.45/quome-darwin-arm64.tar.gz"
      sha256 "e8efd0a4e04f45dab79d7ef2973534f0a292b0dfc2525fdfa931d1f420b9ebcd"
    end
    on_intel do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.45/quome-darwin-x64.tar.gz"
      sha256 "4a307cd9926326927ac1177ac4be15afe8bbdc94b1aa46a81ea52dbb8e657ba7"
    end
  end

  def install
    bin.install "quome"
  end

  test do
    assert_match "quome", shell_output("#{bin}/quome --version")
  end
end
