class Quome < Formula
  desc "CLI for the Quome platform"
  homepage "https://github.com/quome-cloud/quome-cli"
  version "0.2.46"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.46/quome-darwin-arm64.tar.gz"
      sha256 "899f9274e87bca097b68071d09a1335b8e1d9bf231aac0a506c10916efdb3045"
    end
    on_intel do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.46/quome-darwin-x64.tar.gz"
      sha256 "6289690df5fdd918c68ead3aa36f52b86bc9540566a2b675eaf24339c221f61b"
    end
  end

  def install
    bin.install "quome"
  end

  test do
    assert_match "quome", shell_output("#{bin}/quome --version")
  end
end
