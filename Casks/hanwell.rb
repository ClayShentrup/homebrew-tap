cask "hanwell" do
  version "1.0.2"
  sha256 "c6906d1a7fe01635fa11cf8bfc9e5b437d0b1850f4e71e3edf3112abd5802c73"

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
