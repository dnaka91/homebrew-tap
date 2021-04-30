class Wonky < Formula
  desc "Terminal monitor with a mascot"
  homepage "https://github.com/the-gorg/wonky"
  url "https://github.com/the-gorg/wonky.git",
      revision: "4895ebfcdfa2d5d06bd90f9336f785a73fc105b5"
  version "1.0.0"
  license "MIT"
  head "https://github.com/the-gorg/wonky.git"

  bottle do
    root_url "https://github.com/dnaka91/homebrew-tap/releases/download/wonky-1.0.0"
    sha256 cellar: :any_skip_relocation, catalina:     "6cdf5979bb0123e191ff7f109eefc1b88d0a0453f3eb11d9e47026c7c55dcc7f"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "258fdbcb2d93b68c932e1cc319d74e594a320f676a05b992612ce5d2cf367922"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "true"
  end
end
