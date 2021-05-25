cask "obs-scene-switcher" do
  version "1.12"
  sha256 "32a97a57d487b593b2c138dc3491434135e23d65657b7dc3bc568bdac06d2256"

  url "https://github.com/WarmUpTill/SceneSwitcher/releases/download/#{version}/SceneSwitcher.zip"
  name "obs-scene-switcher"
  desc "Automated scene switcher for OBS Studio"
  homepage "https://github.com/WarmUpTill/SceneSwitcher"

  pkg "SceneSwitcher/MacOs/SceneSwitcher.pkg"

  uninstall pkgutil: "com.warmuptill.SceneSwitcher"
end
