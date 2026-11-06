class Quome < Formula
  desc "CLI for the Quome platform"
  homepage "https://github.com/quome-cloud/quome-cli"
  version "0.2.22"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.22/quome-darwin-arm64.tar.gz"
      sha256 "26639c0c2ac6d4590993533f2da821bd08600a48de5d4ff7b9e121e128aed4ff"
    end
    on_intel do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.22/quome-darwin-x64.tar.gz"
      sha256 "8b94cf35cf0b4aa977406f581ca98a59671c4ceaf34253610a6423b106a2176e"
    end
  end

  def install
    bin.install "quome"
  end

  test do
    assert_match "quome", shell_output("#{bin}/quome --version")
  end
end
