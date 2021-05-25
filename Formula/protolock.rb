class Protolock < Formula
  desc "Track your .proto files and prevent changes which impact API compatibility"
  homepage "https://github.com/nilslice/protolock"
  url "https://github.com/nilslice/protolock.git",
      tag:      "v0.15.2",
      revision: "01da08d6773ab51411ed6e48fa05d7070430558d"
  license "BSD-3-Clause"
  head "https://github.com/nilslice/protolock.git"

  bottle do
    root_url "https://github.com/dnaka91/homebrew-tap/releases/download/protolock-0.15.2"
    sha256 cellar: :any_skip_relocation, catalina:     "36ea240323f6094089aa728cc19af67b6f666d255a7dda51abcd748d84c668f5"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "5364f8812afae96ae23f09c7dfcdbeaef5a7367026fa6efad086467d5fb53ce9"
  end

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args, "-ldflags", "-s -w", "./cmd/protolock"
  end

  test do
    system "#{bin}/protolock", "-h"
  end
end
