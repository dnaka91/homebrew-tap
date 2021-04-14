class Timetracking < Formula
  desc "Simple command-line time tracking application"
  homepage "https://github.com/hardliner66/timetracking"
  url "https://github.com/hardliner66/timetracking.git",
      tag:      "v1.5.0",
      revision: "72ce0eb1aeba833674130b7798dd936f18b121ed"
  license "Apache-2.0"
  head "https://github.com/hardliner66/timetracking.git"

  bottle do
    root_url "https://github.com/dnaka91/homebrew-tap/releases/download/timetracking-1.5.0"
    sha256 cellar: :any_skip_relocation, catalina:     "91da65808b4576b1cfa91a4ad29e0a39a94f3654e163bd26b9f7182bd723dd53"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "c3fcc3b25124a284a13aa07c05ac6d3564959e8a2563b1a9f84c9b56d25538cb"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/tt", "--version"
  end
end
