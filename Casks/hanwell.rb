cask "hanwell" do
  version "1.0.1"
  sha256 "34b1887fe4ad194bde99ca40135a01e4496fb78745d4e4b941abb6e85b2bdaf0"

  url "https://github.com/ClayShentrup/hanwell/releases/download/v#{version}/Hanwell.pkg"
  name "Hanwell"
  desc "50-watt EL34 guitar amp in the Marshall line, solved from its circuit"
  homepage "https://clayshentrup.github.io/hanwell/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  pkg "Hanwell.pkg"

  uninstall pkgutil: "com.hanwell.amp.pkg"
end
