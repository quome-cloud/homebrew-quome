class Quome < Formula
  desc "CLI for the Quome platform"
  homepage "https://github.com/quome-cloud/quome-cli"
  version "0.1.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.1.9/quome-darwin-arm64.tar.gz"
      sha256 "b0606dad812682c73698b584a420de88f1ddbda7bf60aff0ebdb9fb1bde4bfea"
    end
    on_intel do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.1.9/quome-darwin-x64.tar.gz"
      sha256 "ee78e9dc263e7e6f02d4ed7ebfd392a94674f7e11ea4e3cc4b772dbccf1bac79"
    end
  end

  def install
    bin.install "quome"
  end

  test do
    assert_match "quome", shell_output("#{bin}/quome --version")
  end
end
