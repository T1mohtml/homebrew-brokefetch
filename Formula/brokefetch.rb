class Brokefetch < Formula
  desc "The only fetch tool that doesn't pretend like your life is ok"
  homepage "https://github.com/T1mohtml/brokefetch"
  url "https://github.com/T1mohtml/brokefetch/archive/refs/tags/2025.09.14-1.tar.gz"
  sha256 "fc607de5f8403e8cba3228d710477c873d05adb2fa16aecf3f20c71990d1010a"
  license "MIT"

  depends_on "gawk"

  def install
    # Install scripts with simpler names
    bin.install "brokefetch.sh" => "brokefetch"
    bin.install "brokefetch_beta.sh" => "brokefetch-beta"

    chmod 0755, bin/"brokefetch"
    chmod 0755, bin/"brokefetch-beta"
  end

  test do
    # Run the main script and check it outputs something containing "broke"
    output = shell_output("#{bin}/brokefetch")
    assert_match /broke/i, output
  end
end