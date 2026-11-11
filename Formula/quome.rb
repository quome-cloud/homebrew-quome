class Quome < Formula
  desc "CLI for the Quome platform"
  homepage "https://github.com/quome-cloud/quome-cli"
  version "0.2.41"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.41/quome-darwin-arm64.tar.gz"
      sha256 "c2670b30170a2cc06121c3130941b5d8e6ce3146daee3881838d842a143e8547"
    end
    on_intel do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.41/quome-darwin-x64.tar.gz"
      sha256 "0e3fff5b9fcd74322a0457144a463b69483b280e5a035a2a607c6f2853e46e7e"
    end
  end

  def install
    bin.install "quome"
  end

  test do
    assert_match "quome", shell_output("#{bin}/quome --version")
  end
end
