class Quome < Formula
  desc "CLI for the Quome platform"
  homepage "https://github.com/quome-cloud/quome-cli"
  version "0.2.38"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.38/quome-darwin-arm64.tar.gz"
      sha256 "002e9329698e71698d41296d4262258c1a873161f4bbf945b84bd713faf6aa75"
    end
    on_intel do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.38/quome-darwin-x64.tar.gz"
      sha256 "b24886a137d5f95b636d367297b4cd7ef4fd192f6076239369f5cf0bbf283f92"
    end
  end

  def install
    bin.install "quome"
  end

  test do
    assert_match "quome", shell_output("#{bin}/quome --version")
  end
end
