cask "obs-streamfx" do
  version "0.10.0"
  sha256 "7dfca8b76fe6ee9aa21bd251903f848cf9bc3af9219470786a7de6b64375f955"

  url "https://github.com/Xaymar/obs-StreamFX/releases/download/#{version}/StreamFX-MacOS-Installer.pkg"
  name "obs-streamfx"
  desc "Adds many new effects, filters, sources, transitions and encoders to OBS Studio"
  homepage "https://github.com/Xaymar/obs-StreamFX"

  depends_on macos: ">= :catalina"

  pkg "StreamFX-MacOS-Installer.pkg"

  uninstall pkgutil: "com.xaymar.StreamFX"
end
