class Timetracking < Formula
  desc "Simple command-line time tracking application"
  homepage "https://github.com/hardliner66/timetracking"
  url "https://github.com/hardliner66/timetracking.git",
      tag:      "v1.5.0",
      revision: "72ce0eb1aeba833674130b7798dd936f18b121ed"
  license "Apache-2.0"
  head "https://github.com/hardliner66/timetracking.git"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/tt", "--version"
  end
end
