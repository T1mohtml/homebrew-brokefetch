class Brokefetch < Formula
  desc "Funny minimal fetch script"
  homepage "https://github.com/T1mohtml/brokefetch"
  url "https://github.com/T1mohtml/brokefetch/archive/refs/tags/release1.7.2.tar.gz"
  sha256 "bf006ce32c99ef1a5942c125a90b428668f2a9421a18110284e6ebb1de16dd85"
  license "MIT"
  version "1.7.2"

  depends_on "bash"

  def install
    bin.install "brokefetch.sh" => "brokefetch"
    bin.install "brokefetch_EDGE.sh" => "brokefetch-edge"
  end

  test do
    assert_match "BROKEFETCH", shell_output("#{bin}/brokefetch")
  end
end
