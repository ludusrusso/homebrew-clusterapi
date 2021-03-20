# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class ClusterApi < Formula
  desc "Home for the Cluster Management API work, a subproject of sig-cluster-lifecycle"
  homepage "https://cluster-api.sigs.k8s.io"
  url "https://github.com/kubernetes-sigs/cluster-api/archive/refs/tags/v0.3.14.tar.gz"
  sha256 "fc7c7eb07bce70505721c8bc82ff4b8f111172cdfef94964b7ceac82e45faace"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"clusterctl"
  end

  test do
    assert_match "Usage of clusterctl:",
        shell_output("#{bin}/clusterctl --help")
  end
end
