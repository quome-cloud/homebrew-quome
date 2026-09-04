class Quome < Formula
  desc "CLI for the Quome platform"
  homepage "https://github.com/quome-cloud/quome-cli"
  version "0.2.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.8/quome-darwin-arm64.tar.gz"
      sha256 "c23e8f25117cf27a91d2a2bb3b6ac00a04fd5048ac752f072601b8b0ab9785aa"
    end
    on_intel do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.8/quome-darwin-x64.tar.gz"
      sha256 "2b893ddc89d92016b643537d8426ff6cbaa6525fcb3337dab33dce48bfa1f846"
    end
  end

  def install
    bin.install "quome"
  end

  test do
    assert_match "quome", shell_output("#{bin}/quome --version")
  end
end
