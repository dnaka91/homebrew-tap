class Docuum < Formula
  desc "Perform least recently used (LRU) eviction of Docker images"
  homepage "https://github.com/stepchowfun/docuum"
  url "https://github.com/stepchowfun/docuum.git",
      tag:      "v0.16.1",
      revision: "eed5d51af5ca605013373be6c2c79bf34ea68299"
  license "MIT"
  head "https://github.com/stepchowfun/docuum.git"

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
