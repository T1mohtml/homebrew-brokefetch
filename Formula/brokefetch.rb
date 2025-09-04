class Brokefetch < Formula
  desc "Funny minimal fetch script"
  homepage "https://github.com/T1mohtml/brokefetch"
  version "2025.09.02-1.1"
  url "https://github.com/Szerwigi1410/brokefetch/archive/refs/tags/2025.09.02.tar.gz"
  sha256 "035b6973ac5408044221c700438c641d5c8f57e70e6873abe33c7b4306f818e7"
  license "MIT"

  depends_on "bash"
  depends_on "gawk"

  def install
    bin.install "brokefetch.sh" => "brokefetch"
    bin.install "brokefetch_beta.sh" => "brokefetch-beta"
    bin.install "brokefetch_mod.sh" => "brokefetch-mod"
    pkgshare.install "logos"
  end

  test do
    assert_match "BROKEFETCH", shell_output(bin/"brokefetch")
  end
end
