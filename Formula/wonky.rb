class Wonky < Formula
  desc "Terminal monitor with a mascot"
  homepage "https://github.com/the-gorg/wonky"
  url "https://github.com/the-gorg/wonky.git",
      revision: "8afa6b3bd535c61650b439fb64144d1e77019c07"
  version "0.1.0"
  license "MIT"
  head "https://github.com/the-gorg/wonky.git"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "true"
  end
end
