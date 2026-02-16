class Freeport < Formula
  desc "Find free ports on your machine"
  homepage "https://github.com/hamzaplojovic/freeport"
  url "https://github.com/hamzaplojovic/freeport/archive/refs/heads/main.tar.gz"
  version "0.1.0"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X main.version=#{version}")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/freeport -version")
  end
end
