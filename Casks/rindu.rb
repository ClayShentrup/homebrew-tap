cask "rindu" do
  version "2.1.1"
  sha256 "ce37bc89d9fb2643e06181a68be83874d09f54e0a0baf95a1c896f3cf87692f8"

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
