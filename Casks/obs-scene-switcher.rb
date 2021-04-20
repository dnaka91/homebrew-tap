cask "obs-scene-switcher" do
  version "1.11.2"
  sha256 "2a3428ca7bd032705c80a2e4fadaeefaac4a0a5d75ade2a66bf64999b3fcc38b"

  url "https://github.com/WarmUpTill/SceneSwitcher/releases/download/#{version}/SceneSwitcher.zip"
  name "obs-scene-switcher"
  desc "Automated scene switcher for OBS Studio"
  homepage "https://github.com/WarmUpTill/SceneSwitcher"

  pkg "SceneSwitcher/MacOs/SceneSwitcher.pkg"

  uninstall pkgutil: "com.warmuptill.SceneSwitcher"
end
