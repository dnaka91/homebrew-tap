class ToggleCoolCowSaysType < Formula
  desc "Terminal typing game"
  homepage "https://github.com/togglebyte/toggle_cool_cow_says_type"
  url "https://github.com/togglebyte/toggle_cool_cow_says_type.git",
      tag:      "v0.1.9",
      revision: "a8431c55fa53c23eb7f601bf7bc8db6b584bfd31"
  license "MIT"
  head "https://github.com/togglebyte/toggle_cool_cow_says_type.git"

  bottle do
    root_url "https://github.com/dnaka91/homebrew-tap/releases/download/toggle_cool_cow_says_type-0.1.9"
    sha256 cellar: :any_skip_relocation, catalina:     "1ba6dcbfa9c3124dcecadceec0f140db101e03d43d031bd74d0709df3567948c"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "1da0b90c58d4fe61741505e7dd4b7b60c2c579d6dc86aabb26ec962ec989f53f"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/tccst", "-v"
  end
end
