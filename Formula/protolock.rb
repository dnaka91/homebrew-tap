class Protolock < Formula
  desc "Track your .proto files and prevent changes which impact API compatibility"
  homepage "https://github.com/nilslice/protolock"
  url "https://github.com/nilslice/protolock.git",
      tag:      "v0.15.2",
      revision: "01da08d6773ab51411ed6e48fa05d7070430558d"
  license "BSD-3-Clause"
  head "https://github.com/nilslice/protolock.git"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args, "-ldflags", "-s -w", "./cmd/protolock"
  end

  test do
    system "#{bin}/protolock", "-h"
  end
end
