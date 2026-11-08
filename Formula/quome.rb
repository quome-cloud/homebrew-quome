class Quome < Formula
  desc "CLI for the Quome platform"
  homepage "https://github.com/quome-cloud/quome-cli"
  version "0.2.25"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.25/quome-darwin-arm64.tar.gz"
      sha256 "89cf7f6b93adace2d33b9c7783eeff6dbf1672a579c35214474d5c5029764ff3"
    end
    on_intel do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.25/quome-darwin-x64.tar.gz"
      sha256 "dfb26a21f837ee23b2aff01ed1320c691aa33078ca56d164010005beab4027e9"
    end
  end

  def install
    bin.install "quome"
  end

  test do
    assert_match "quome", shell_output("#{bin}/quome --version")
  end
end
