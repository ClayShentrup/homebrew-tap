cask "unterholz-uh20" do
  version "0.4.0"
  sha256 "68a252d17b2511a2dc40c4bdbb081d487765ff959930387bcd1d4a5f46c54945"

  url "https://github.com/ClayShentrup/unterholz-uh20/releases/download/v#{version}/Unterholz-UH-20.pkg"
  name "Unterholz UH-20"
  desc "JFET guitar preamp with a studio clean channel and a lead channel"
  homepage "https://clayshentrup.github.io/unterholz-uh20/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  pkg "Unterholz-UH-20.pkg"

  uninstall pkgutil: "com.unterholz.uh20.pkg"
end
