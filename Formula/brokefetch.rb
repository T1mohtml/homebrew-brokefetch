class Brokefetch < Formula
  desc "Funny minimal fetch script"
  homepage "https://github.com/T1mohtml/brokefetch"
  url "https://github.com/T1mohtml/brokefetch/archive/refs/tags/release1.7.3.tar.gz"
  sha256 "50cd8b5a2bbe4799da29cc7a0c108a8c277147186a51df4b672b6fc856c2a2af"
  license "MIT"
  version "1.7.3"

  depends_on "bash"

  def install
    bin.install "brokefetch.sh" => "brokefetch"
    bin.install "brokefetch_EDGE.sh" => "brokefetch-edge"
  end

  test do
    assert_match "BROKEFETCH", shell_output("#{bin}/brokefetch")
  end
end
