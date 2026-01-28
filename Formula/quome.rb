class Quome < Formula
  desc "CLI for the Quome platform"
  homepage "https://github.com/quome-cloud/quome-cli"
  version "0.1.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.1.8/quome-darwin-arm64.tar.gz"
      sha256 "297f96e5059e3bd0aa098228a3bf38923b36b7295873a0b5aca268299e872568"
    end
    on_intel do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.1.8/quome-darwin-x64.tar.gz"
      sha256 "17d0310f1b427693bfc4900b4b0f7aae9a7e828ae56fee2fe93e359a07a62c66"
    end
  end

  def install
    bin.install "quome"
  end

  test do
    assert_match "quome", shell_output("#{bin}/quome --version")
  end
end
