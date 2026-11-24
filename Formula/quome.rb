class Quome < Formula
  desc "CLI for the Quome platform"
  homepage "https://github.com/quome-cloud/quome-cli"
  version "0.2.54"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.54/quome-darwin-arm64.tar.gz"
      sha256 "34ae1c036f5db0165c2f412460a1bf3a5804494792dc66369996d3db9fd4967d"
    end
    on_intel do
      url "https://github.com/quome-cloud/quome-cli/releases/download/v0.2.54/quome-darwin-x64.tar.gz"
      sha256 "bb3ae89a5a9411f9fdd73db805858bf072a6c38430e1c522b6e679779e20a03d"
    end
  end

  def install
    bin.install "quome"
  end

  test do
    assert_match "quome", shell_output("#{bin}/quome --version")
  end
end
