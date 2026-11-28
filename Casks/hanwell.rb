cask "hanwell" do
  version "1.1.1"
  sha256 "d94c316ed58de55bd42dae508cd11e6787207fd7248d0c45751d25eb425a0d75"

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
