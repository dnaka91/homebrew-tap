class Timetracking < Formula
  desc "Simple command-line time tracking application"
  homepage "https://github.com/hardliner66/timetracking"
  url "https://github.com/hardliner66/timetracking.git",
      tag:      "v1.5.13",
      revision: "bc96f5a05d03e4028ef6594a90b5e1fe02b3c483"
  license "Apache-2.0"
  head "https://github.com/hardliner66/timetracking.git"

  bottle do
    root_url "https://github.com/dnaka91/homebrew-tap/releases/download/timetracking-1.5.13"
    sha256 cellar: :any_skip_relocation, catalina:     "735719b5018b42704910c99de8b194fe2992ee0e1c84a607b5e5273f7ac058f5"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "50a3aa9684ebc48d2fcf6f6bb9f1b18ef1203535710c7874cab24a2a5257158a"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/tt", "--version"
  end
end
