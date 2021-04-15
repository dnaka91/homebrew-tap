class Timetracking < Formula
  desc "Simple command-line time tracking application"
  homepage "https://github.com/hardliner66/timetracking"
  url "https://github.com/hardliner66/timetracking.git",
      tag:      "v1.5.4",
      revision: "e5c9cb2c888b248e3a90325c2d43120dc3fe4fa9"
  license "Apache-2.0"
  head "https://github.com/hardliner66/timetracking.git"

  bottle do
    root_url "https://github.com/dnaka91/homebrew-tap/releases/download/timetracking-1.5.4"
    sha256 cellar: :any_skip_relocation, catalina:     "9a7b2cde5b8473b4c6e1e25d425c1b36e08b5cc8ff4a6d42f7792cd4e0e05664"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "4cdba20e73b79236d86a5fa40960c1eb5404eddd1a6b237b699939c12a0a0ba2"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/tt", "--version"
  end
end
