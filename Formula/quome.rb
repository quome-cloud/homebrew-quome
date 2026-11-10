class Quome < Formula
  desc "CLI for the Quome platform"
  homepage "https://github.com/quome-cloud/quome-cli"
  version "0.2.37"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.37/quome-darwin-arm64.tar.gz"
      sha256 "98eb0d24d7ec5a2520c1c21c28e0b93f59516df495f1f2287903aa08bd2589f5"
    end
    on_intel do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.37/quome-darwin-x64.tar.gz"
      sha256 "cf99bae99e1bbbdff385d910b351de60820805cbb0f551dfa6be5a339dab5ada"
    end
  end

  def install
    bin.install "quome"
  end

  test do
    assert_match "quome", shell_output("#{bin}/quome --version")
  end
end
