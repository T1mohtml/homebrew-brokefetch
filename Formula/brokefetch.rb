class Brokefetch < Formula
  desc "Funny minimal fetch script"
  homepage "https://github.com/T1mohtml/brokefetch"
  url "https://github.com/Szerwigi1410/brokefetch/archive/refs/tags/2025.08.27-1.zip"
  sha256 "60d844aa575429e6333192b9dffe47bed6b4a63b17880462eecea5f002f0ff17"
  license "MIT"
  version "2025.08.27-1"

  depends_on "bash"

  def install
    bin.install "brokefetch.sh" => "brokefetch"
    bin.install "brokefetch_beta.sh" => "brokefetch-beta"
    bin.install "brokefetch_mod.sh" => "brokefetch-mod"
    pkgshare.install "logos"
  end

  test do
    assert_match "BROKEFETCH", shell_output("#{bin}/brokefetch")
  end
end
