class Docuum < Formula
  desc "Perform least recently used (LRU) eviction of Docker images"
  homepage "https://github.com/stepchowfun/docuum"
  url "https://github.com/stepchowfun/docuum.git",
      tag:      "v0.16.1",
      revision: "eed5d51af5ca605013373be6c2c79bf34ea68299"
  license "MIT"
  head "https://github.com/stepchowfun/docuum.git"

  bottle do
    root_url "https://github.com/dnaka91/homebrew-tap/releases/download/docuum-0.16.1"
    sha256 cellar: :any_skip_relocation, catalina:     "a34b2af7350c6aaa5fa76daa88eb2b875c1bff2ad9de9e40aa9294e1a930cf31"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "3a69c15cca82d6ddba5037eef4eb8892ea0102f159b967b882897483aa80a03c"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  plist_options manual: "docuum"

  def plist
    <<~EOS
      <?xml version="1.0" encoding="UTF-8"?>
      <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "https://www.apple.com/DTDs/PropertyList-1.0.dtd">
      <plist version="1.0">
        <dict>
          <key>Label</key>
          <string>#{plist_name}</string>
          <key>ProgramArguments</key>
          <array>
            <string>#{opt_bin}/docuum</string>
            <string>--threshold</string>
            <string>15 GB</string>
          </array>
          <key>EnvironmentVariables</key>
          <dict>
              <key>PATH</key>
              <string>/bin:/usr/bin:/usr/local/bin</string>
          </dict>
          <key>KeepAlive</key>
          <true/>
          <key>StandardOutPath</key>
          <string>#{var}/log/docuum.log</string>
          <key>StandardErrorPath</key>
          <string>#{var}/log/docuum.log</string>
        </dict>
      </plist>
    EOS
  end

  test do
    system "#{bin}/docuum", "-v"
  end
end
