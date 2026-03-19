class Bgptools < Formula
  desc "CLI tool to look up BGP information from bgp.tools"
  homepage "https://github.com/olerap/bgptools-cli"
  url "https://github.com/olerap/bgptools-cli/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "5c722407137c08ae450d590430b825f2e4793aeabd34ab37bbebe88022d11d37"
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
