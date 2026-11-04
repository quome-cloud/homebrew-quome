class Quome < Formula
  desc "CLI for the Quome platform"
  homepage "https://github.com/quome-cloud/quome-cli"
  version "0.2.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.13/quome-darwin-arm64.tar.gz"
      sha256 "d45eb3927f7208568d1d0eb65c3e0e206498f8dc8766b131a9d5d6ec4b089891"
    end
    on_intel do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.13/quome-darwin-x64.tar.gz"
      sha256 "6640da0edc33feeffb85eb4a6932c7eb3e4f695a697aa0998135e44ab6262181"
    end
  end

  def install
    bin.install "quome"
  end

  test do
    assert_match "quome", shell_output("#{bin}/quome --version")
  end
end
