class Brokefetch < Formula
  desc "Funny minimal fetch script"
  homepage "https://github.com/T1mohtml/brokefetch"
  url "https://github.com/T1mohtml/brokefetch/archive/refs/tags/release1.7.4.zip"
  sha256 "01faaba3abfe2b11ecd8b74f1b70bf753940d552ec56c9ec52f6b3db8d50dc63"
  license "MIT"
  version "1.7.4"

  depends_on "bash"

  def install
    bin.install "brokefetch.sh" => "brokefetch"
    bin.install "brokefetch_EDGE.sh" => "brokefetch-edge"
    bin.install "brokefetch_beta.sh" => "brokefetch-beta"
  end

  test do
    assert_match "BROKEFETCH", shell_output("#{bin}/brokefetch")
  end
end
