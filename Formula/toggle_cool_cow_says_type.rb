class ToggleCoolCowSaysType < Formula
  desc "Terminal typing game"
  homepage "https://github.com/togglebyte/toggle_cool_cow_says_type"
  url "https://github.com/togglebyte/toggle_cool_cow_says_type.git",
      tag:      "v0.1.9",
      revision: "a8431c55fa53c23eb7f601bf7bc8db6b584bfd31"
  license "MIT"
  head "https://github.com/togglebyte/toggle_cool_cow_says_type.git"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/tccst", "-v"
  end
end
