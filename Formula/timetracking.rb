class Timetracking < Formula
  desc "Simple command-line time tracking application"
  homepage "https://github.com/hardliner66/timetracking"
  url "https://github.com/hardliner66/timetracking.git",
      tag:      "v1.5.20",
      revision: "7585fc6275859a218ccf56d5402703dfe733d12c"
  license "Apache-2.0"
  head "https://github.com/hardliner66/timetracking.git"

  bottle do
    root_url "https://github.com/dnaka91/homebrew-tap/releases/download/timetracking-1.5.20"
    sha256 cellar: :any_skip_relocation, catalina:     "93724d0c5b16e356857d873878ceafc199d8dd36f42aa463e4dfc1f11f879f21"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "83b2cb056e4fec5d0c228375c2ea7db84aa000b23c66bb5e4106db7069c187fc"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/tt", "--version"
  end
end
