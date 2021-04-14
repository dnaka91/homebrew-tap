class Sqlboiler < Formula
  desc "Generate a Go ORM tailored to your database schema"
  homepage "https://github.com/volatiletech/sqlboiler"
  url "https://github.com/volatiletech/sqlboiler.git",
      tag:      "v4.5.0",
      revision: "475493476401b3fd8fd0801eece058e514d284d7"
  license "BSD-3-Clause"
  head "https://github.com/volatiletech/sqlboiler.git"

  bottle do
    root_url "https://github.com/dnaka91/homebrew-tap/releases/download/sqlboiler-4.5.0"
    sha256 cellar: :any_skip_relocation, catalina:     "2dcf26f908418f570361430a8677916ca095e96a1f3bad52fa19f7d035492a75"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "c7272d878a23fa8d3e446a5523b3a9640925ac92769e4a899d7268bf39474887"
  end

  depends_on "go" => :build

  def install
    ldflags = "-s -w"

    system "go", "build", "-ldflags", ldflags, "-o", bin/"sqlboiler"
    system "go", "build", "-ldflags", ldflags, "-o", bin/"sqlboiler-psql", "./drivers/sqlboiler-psql"
    system "go", "build", "-ldflags", ldflags, "-o", bin/"sqlboiler-mysql", "./drivers/sqlboiler-mysql"
    system "go", "build", "-ldflags", ldflags, "-o", bin/"sqlboiler-mssql", "./drivers/sqlboiler-mssql"

    prefix.install_metafiles
  end

  test do
    system "#{bin}/sqlboiler", "--version"
  end
end
