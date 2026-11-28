cask "rindu" do
  version "2.1.0"
  sha256 "10f5c31f6817518d61641c74b23d4ada73f2c119cd9d19af3e5a8dc17a286270"

  url "https://github.com/ClayShentrup/rindu/releases/download/v#{version}/Rindu.pkg"
  name "Rindu"
  desc "One clean guitar amp for chime, glass and warmth, with chorus, echoes and hall"
  homepage "https://clayshentrup.github.io/rindu/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  pkg "Rindu.pkg"

  uninstall pkgutil: "com.rindu.amp.pkg"
end
