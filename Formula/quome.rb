class Quome < Formula
  desc "CLI for the Quome platform"
  homepage "https://github.com/quome-cloud/quome-cli"
  version "0.2.19"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.19/quome-darwin-arm64.tar.gz"
      sha256 "4f09bcfca7838904d2484f1751b761a9ca01449b42f299286a9fc5b6bc6189bb"
    end
    on_intel do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.19/quome-darwin-x64.tar.gz"
      sha256 "4753671d29fce030807165b92c4f84ab10d2aa790e6b7f9156c60b56267fc32e"
    end
  end

  def install
    bin.install "quome"
  end

  test do
    assert_match "quome", shell_output("#{bin}/quome --version")
  end
end
