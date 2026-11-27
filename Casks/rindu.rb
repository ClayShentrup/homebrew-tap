cask "rindu" do
  version "2.0.0"
  sha256 "ddf1f168e23b2de49838e9d34af233f977a08464e72994a3ab5b57be942aa283"

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
