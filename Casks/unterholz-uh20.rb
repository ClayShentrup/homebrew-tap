cask "unterholz-uh20" do
  version "0.3.0"
  sha256 "9c24c307d4634fa031455ce4fb3d37bc79267cc14f8ec5c6db54cbd5107587ff"

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
