class Brokefetch < Formula
  desc "Funny minimal fetch script"
  homepage "https://github.com/T1mohtml/brokefetch"
  url "https://github.com/Szerwigi1410/brokefetch/archive/refs/tags/re-release1.7.tar.gz"
  sha256 "01fc86d709fb89e84ed425aa43c10ea3afe00415428da7852052ca10034fdcfc"
  license "MIT"

  depends_on "bash"

  def install
    bin.install "brokefetch.sh" => "brokefetch"
  end

  test do
    assert_match "BROKEFETCH", shell_output("#{bin}/brokefetch")
  end
end
