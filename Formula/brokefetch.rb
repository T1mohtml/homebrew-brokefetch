class Brokefetch < Formula
  desc "Funny minimal fetch script"
  homepage "https://github.com/T1mohtml/brokefetch"
  url "https://github.com/T1mohtml/brokefetch/archive/refs/tags/2025.09.05.tar.gz"
  sha256 "0581536e43ea1700132fd31cd1b2713b0dcad7a57fe77b78283a409cefcfe00d"
  license "MIT"

  depends_on "bash"
  depends_on "gawk"

def install
  chmod 0755, "brokefetch_beta.sh"
  chmod 0755, "brokefetch_mod.sh"
  bin.install "brokefetch.sh" => "brokefetch"
  bin.install "brokefetch_beta.sh" => "brokefetch-beta"
  bin.install "brokefetch_mod.sh" => "brokefetch-mod"
  pkgshare.install "logos"
end

test do
  system bin/"brokefetch"
end
end
