cask "hanwell" do
  version "1.0.4"
  sha256 "b1d8b25e23c49fb51f5d5b82c603c72a8005fc0ff4501c29297831c1c1e054b1"

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
