class Grcov < Formula
  desc "Rust tool to collect and aggregate code coverage data for multiple source files"
  homepage "https://github.com/mozilla/grcov"
  url "https://github.com/mozilla/grcov.git",
      tag:      "v0.8.0",
      revision: "d467ee20e68dec58e9e9c4f718754fb2e194a487"
  license "MPL-2.0"
  head "https://github.com/mozilla/grcov.git"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args,
      "--no-default-features",
      "--features", "deflate-miniz,demangle-no-swift"
  end

  test do
    system "#{bin}/grcov", "-V"
  end
end
