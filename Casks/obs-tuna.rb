cask "obs-tuna" do
  version "1.5.3"
  sha256 "03c1411c377656199f90a0ae01b148dc4bb357cbe7fca28edbc3c5d5b8615c43"

  url "https://github.com/univrsal/tuna/releases/download/v#{version}/tuna.v#{version}.macos.pkg"
  name "obs-tuna"
  desc "Song information plugin for obs-studio"
  homepage "https://github.com/univrsal/tuna"

  pkg "tuna.v#{version}.macos.pkg"

  uninstall pkgutil: "cf.vrsal.tuna"
end
