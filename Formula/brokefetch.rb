class Brokefetch < Formula
  desc "Funny minimal fetch script"
  homepage "https://github.com/T1mohtml/brokefetch"
  url "https://github.com/T1mohtml/brokefetch/archive/refs/tags/release1.7.tar.gz"
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
  license "MIT"

  depends_on "bash"

  def install
    bin.install "brokefetch.sh" => "brokefetch"
  end

  test do
    assert_match "BROKEFETCH", shell_output("#{bin}/brokefetch")
  end
end
