cask "obs-move-transition" do
  version "2.4.1,3364"
  sha256 "cb0bde2cabcbff2a0763f82ffb9c9ee5b77e456f0e728919881dc6ead9322b36"

  url "https://obsproject.com/forum/resources/move-transition.913/version/#{version.after_comma}/download?file=71064",
      verified: "https://obsproject.com/forum/resources/move-transition.913/"
  name "obs-move-transition"
  desc "Move transition for OBS Studio"
  homepage "https://github.com/exeldro/obs-move-transition"

  pkg "move-transition-2021-05-13-d4ec1679f390b7de5e44dd6e752b3e53523e71ca-macos.pkg"

  uninstall pkgutil: "com.exeldro.move-transition"
end
