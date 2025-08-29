class Brokefetch < Formula
  desc "Funny minimal fetch script"
  homepage "https://github.com/T1mohtml/brokefetch"
  url "https://github.com/Szerwigi1410/brokefetch/archive/refs/tags/2025.08.27-1.tar.gz"
  sha256 "d6d59a45511317b93efdaee6636ce914aae18069b6434a5a21cda0a4e72c8d37"
  license "MIT"
  version "2025.08.27-1.1"

  depends_on "bash"

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
