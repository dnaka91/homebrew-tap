cask "obs-move-transition" do
  version "2.4.0,3283"
  sha256 "eff010859539bde7fa0f24b55125290b0715d792f867e5f0940ec2f23a70c4ad"

  url "https://obsproject.com/forum/resources/move-transition.913/version/#{version.after_comma}/download?file=70033",
      verified: "https://obsproject.com/forum/resources/move-transition.913/"
  name "obs-move-transition"
  desc "Move transition for OBS Studio"
  homepage "https://github.com/exeldro/obs-move-transition"

  pkg "move-transition-2021-04-14-cccb025d71658d8db0b98910ce8dc9ee27fd3e51-macos.pkg"

  uninstall pkgutil: "com.exeldro.move-transition"
end
