class Monky < Formula
  desc "Little companion for thingy to get some system stats easily"
  homepage "https://github.com/dnaka91/monky"
  url "https://github.com/dnaka91/monky.git",
      revision: "04c0e8259edd3033d72b07fd00b1ff0c031f2a22"
  version "0.2.0"
  license "AGPL-3.0-only"
  head "https://github.com/dnaka91/monky.git"

  bottle do
    root_url "https://github.com/dnaka91/homebrew-tap/releases/download/monky-0.2.0"
    sha256 cellar: :any_skip_relocation, catalina:     "45dcf2da18aba7940724cdfd60962560a3cbdea3d0b3a211d8b64a691af7d0b9"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "86ce461c9b1e817bd7d1e1cb61718d707e5917296002ea1e234706ce087fe33b"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/monky", "-V"
  end
end
