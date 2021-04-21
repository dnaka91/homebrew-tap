cask "obs-streamfx" do
  version "0.10.0b3"
  sha256 "406dbea5803b86c84bc158158e83a13e82d312d11635cf54e42469fb6715bc8a"

  url "https://github.com/Xaymar/obs-StreamFX/releases/download/#{version}/StreamFX-MacOS-Installer.pkg"
  name "obs-streamfx"
  desc "Adds many new effects, filters, sources, transitions and encoders to OBS Studio"
  homepage "https://github.com/Xaymar/obs-StreamFX"

  depends_on macos: ">= :catalina"

  pkg "StreamFX-MacOS-Installer.pkg"

  uninstall pkgutil: "com.xaymar.StreamFX"
end
