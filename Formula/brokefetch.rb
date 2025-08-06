class Brokefetch < Formula
  desc "Funny minimal fetch script"
  homepage "https://github.com/T1mohtml/brokefetch"
  url "https://github.com/T1mohtml/brokefetch/archive/refs/tags/re-release1.7.tar.gz"
  sha256 "21a6f81a7b0232c68b1d839d689d1efd5220909e753d4985322873148e34cb5e"
  license "MIT"
  version "1.7.1"

  depends_on "bash"

  def install
    bin.install "brokefetch.sh" => "brokefetch"
    bin.install "brokefetch_EDGE.sh" => "brokefetch-edge"
  end

  test do
    assert_match "BROKEFETCH", shell_output("#{bin}/brokefetch")
  end
end
