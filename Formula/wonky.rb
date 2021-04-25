class Wonky < Formula
  desc "Terminal monitor with a mascot"
  homepage "https://github.com/the-gorg/wonky"
  url "https://github.com/the-gorg/wonky.git",
      revision: "8afa6b3bd535c61650b439fb64144d1e77019c07"
  version "0.1.0"
  license "MIT"
  head "https://github.com/the-gorg/wonky.git"

  bottle do
    root_url "https://github.com/dnaka91/homebrew-tap/releases/download/wonky-0.1.0"
    sha256 cellar: :any_skip_relocation, catalina:     "bc2b2af008362238a23ae001eda24423fea0ec81da2e45119c46f415e4a64586"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "bb8391e5be48f5f7b70f2ea370cd6498a0a2d096633fdf9652f42442fa82a07f"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "true"
  end
end
