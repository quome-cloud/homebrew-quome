class Quome < Formula
  desc "CLI for the Quome platform"
  homepage "https://github.com/quome-cloud/quome-cli"
  version "0.2.28"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.28/quome-darwin-arm64.tar.gz"
      sha256 "bc9481c6422b7d75287e4144c802e9e7623a310d9622993d2fb2238e3110af42"
    end
    on_intel do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.28/quome-darwin-x64.tar.gz"
      sha256 "591fb92b1d8ec4dc429e6417564566512ce550ebbd0a4c8fea1ccc177430ffb6"
    end
  end

  def install
    bin.install "quome"
  end

  test do
    assert_match "quome", shell_output("#{bin}/quome --version")
  end
end
