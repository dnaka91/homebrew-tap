class Monky < Formula
  desc "Little companion for thingy to get some system stats easily"
  homepage "https://github.com/dnaka91/monky"
  url "https://github.com/dnaka91/monky.git",
      revision: "04c0e8259edd3033d72b07fd00b1ff0c031f2a22"
  version "0.2.0"
  license "AGPL-3.0-only"
  head "https://github.com/dnaka91/monky.git"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/monky", "-V"
  end
end
