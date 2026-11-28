cask "hanwell" do
  version "1.2.0"
  sha256 "c1ef0933a350fa73871b88e2ceaed4c0a41822c1db335f99e68c349e644ca5b9"

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
