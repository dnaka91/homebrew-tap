cask "obs-spectralizer" do
  version "1.3.4"
  sha256 "56d1901b0de5492e3c9b3ec72d0d1ad187ead9b43985a8b0be010c587a9b6af6"

  url "https://github.com/univrsal/spectralizer/releases/download/v#{version}/spectralizer.v#{version}.macos.pkg"
  name "obs-spectralizer"
  desc "Audio visualizer plugin for obs-studio"
  homepage "https://github.com/univrsal/spectralizer"

  depends_on formula: "fftw"

  pkg "spectralizer.v#{version}.macos.pkg"

  uninstall pkgutil: "cf.vrsal.spectralizer"
end
