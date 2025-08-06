class Brokefetch < Formula
  desc "Funny minimal fetch script"
  homepage "https://github.com/T1mohtml/brokefetch"
  url "https://github.com/T1mohtml/brokefetch/archive/refs/tags/re-relase1.7.tar.gz"
  sha256 "f00919cf8bccd64ae4cb03f3a17d3fd638edee9dfd70b703faf7d2bc61a83100"
  license "MIT"

  depends_on "bash"

  def install
    bin.install "brokefetch.sh" => "brokefetch"
    bin.install "brokefetch_EDGE.sh" => "brokefetch-edge"
  end

  test do
    assert_match "BROKEFETCH", shell_output("#{bin}/brokefetch")
  end
end
