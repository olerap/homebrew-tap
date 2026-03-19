class Bgptools < Formula
  desc "CLI tool to look up BGP information from bgp.tools"
  homepage "https://github.com/olerap/bgptools-cli"
  url "https://github.com/olerap/bgptools-cli/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "dc73115c2d75608e858b1109ad59082a119cab93ad71d36385d1a975bc450a05"
  license "MIT"

  depends_on "curl"
  depends_on "bash"

  def install
    bin.install "bin/bgptools"
  end

  test do
    assert_match "bgptools v#{version}", shell_output("#{bin}/bgptools --version")
  end
end
