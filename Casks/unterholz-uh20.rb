cask "unterholz-uh20" do
  version "0.2.0"
  sha256 "4fb6985266f621d78e1e3c68f957ccd55357dbc8ea3e828d3be237a349ea00aa"

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
