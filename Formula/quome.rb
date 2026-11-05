class Quome < Formula
  desc "CLI for the Quome platform"
  homepage "https://github.com/quome-cloud/quome-cli"
  version "0.2.16"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.16/quome-darwin-arm64.tar.gz"
      sha256 "b69511063342c23d56dced5a0cfa6ded225fe31046fa996423aed14802c65fd0"
    end
    on_intel do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.16/quome-darwin-x64.tar.gz"
      sha256 "e801b9d1a531e49e9536b7cb8399d37d84a2b212b4b030018a07caace1930b20"
    end
  end

  def install
    bin.install "quome"
  end

  test do
    assert_match "quome", shell_output("#{bin}/quome --version")
  end
end
