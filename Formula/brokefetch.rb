class Brokefetch < Formula
  desc "Funny minimal fetch script"
  homepage "https://github.com/yourusername/brokefetch"
  url "https://github.com/yourusername/brokefetch/archive/refs/tags/v1.7.1.tar.gz"
  sha256 "fa8448b9c42e3de896a64fae08c0bc64deb0473ca7c9837f5e26fbe1c5ac46cd"
  license "MIT"

  depends_on "bash"

  def install
    bin.install "brokefetch.sh" => "brokefetch"
  end

  test do
    assert_match "BROKEFETCH", shell_output("#{bin}/brokefetch")
  end
end
