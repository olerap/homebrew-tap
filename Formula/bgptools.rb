class Bgptools < Formula
  desc "CLI tool to look up BGP information from bgp.tools"
  homepage "https://github.com/olerap/bgptools-cli"
  url "https://github.com/olerap/bgptools-cli/archive/refs/tags/v1.1.1.tar.gz"
  sha256 "8cf5a4f1dee1257e09210b6cdb4dfe099c5b4276a7a2334a7451eb64d8024363"
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
