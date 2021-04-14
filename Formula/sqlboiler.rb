class Sqlboiler < Formula
  desc "Generate a Go ORM tailored to your database schema"
  homepage "https://github.com/volatiletech/sqlboiler"
  url "https://github.com/volatiletech/sqlboiler.git",
      tag:      "v4.5.0",
      revision: "475493476401b3fd8fd0801eece058e514d284d7"
  license "BSD-3-Clause"
  head "https://github.com/volatiletech/sqlboiler.git"

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
